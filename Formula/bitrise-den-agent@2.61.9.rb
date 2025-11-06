class BitriseDenAgentAT2619 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.61.9",
    revision: "251b4dfba2576aff7ffbe15cf07b3a48914ea13d"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.61.9/bitrise-den-agent-darwin-arm64.zip"
      sha256 "d0a3a8acbb776041e5f311432928bc675b3f34b7440618ff40ac5cd343706ab6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.61.9/bitrise-den-agent-darwin-amd64.zip"
      sha256 "ae2f8ecd142dbcf4d45f00b64ec76347586deb61315ad52d3b638eeb94d3bfc2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.61.9/bitrise-den-agent-linux-amd64.zip"
      sha256 "0d7ebae3df304403da5f26eab30a34dbc0f706e2a52c52b7f73d73c03e70443c"
    end
  end

  def install
    # Install the main binary
    bin.install "bitrise-den-agent"

    # Write the helper bash script
    (bin/"create_bitrise_daemon.sh").write <<~'EOS'
      #!/bin/bash
      set -euo pipefail
      if [ "$EUID" -ne 0 ]; then
        echo "Error: This script must be run with sudo or as root."
        exit 1
      fi

      USER_NAME="$SUDO_USER"
      GROUP_NAME="staff"

      BIN_PATH="/opt/bitrise/bin"
      AGENT_PATH="$BIN_PATH/bitrise-den-agent"
      BINARY_SOURCE="/opt/homebrew/bin/bitrise-den-agent"
      PLIST_TEMPLATE_FILE="/opt/homebrew/io.bitrise.self-hosted-agent.plist"
      LOG_PATH="/opt/bitrise/var/log"
      PLIST_TARGET_DIR="/Users/${USER_NAME}/Library/LaunchDaemons"
      PLIST_NAME="io.bitrise.self-hosted-agent.plist"

      usage() {
        echo "Usage: $0 --bitrise-agent-intro-secret=SECRET [--enable-agent-self-update]"
        echo
        echo "Options:"
        echo "  --bitrise-agent-intro-secret=SECRET   Bitrise DEN agent intro token (required)"
        echo "  --enable-agent-self-update            If set, allows bitrise-agent to perform self-updates; disabled by default."
        exit 1
      }

      FETCH_LATEST_CLI=false
      BITRISE_AGENT_INTRO_SECRET=""

      for arg in "$@"; do
        case $arg in
          --bitrise-agent-intro-secret=*)
            BITRISE_AGENT_INTRO_SECRET="${arg#*=}"
            shift
            ;;
          --enable-agent-self-update)
            FETCH_LATEST_CLI=true
            shift
            ;;
          *)
            echo "Unknown argument: $arg"
            usage
            ;;
        esac
      done

      if [[ -z "$BITRISE_AGENT_INTRO_SECRET" ]]; then
        echo "Error: --bitrise-agent-intro-secret is required"
        usage
      fi

      create_directories() {
        local dirs=(
          "/opt/bitrise/var"
          "/opt/bitrise/var/log"
          "/opt/bitrise/releases"
          "/opt/bitrise/bin"
        )

        for dir in "${dirs[@]}"; do
          echo "Checking directory $dir"
          if [[ ! -d "$dir" ]]; then
            echo "Creating directory $dir"
            if ! mkdir -p "$dir"; then
              echo "Cannot create directory '$dir'."
              exit 1
            fi
          else
              echo "Directory $dir already exists."
          fi
          echo "Changing ownership to ${USER_NAME}:${GROUP_NAME}"
          chown "${USER_NAME}:${GROUP_NAME}" "$dir"
        done
      }

      create_directories

      create_files() {
        local files=(
          "/opt/bitrise/.env_all.yaml"
        )

        for f in "${files[@]}"; do
          echo "Touch file $f"
          if ! touch "$f"; then
            echo "Cannot touch file '$f'."
            exit 1
          fi
          echo "Changing ownership to ${USER_NAME}:${GROUP_NAME}"
          chown "${USER_NAME}:${GROUP_NAME}" "$f"
        done
      }

      create_files

      create_symlink() {
        if [[ -e "$AGENT_PATH" || -L "$AGENT_PATH" ]]; then
          echo "Removing existing agent file/symlink: $AGENT_PATH"
          rm -f "$AGENT_PATH"
        fi
        ln -s "$BINARY_SOURCE" "$AGENT_PATH"
        echo "Symlink created: $AGENT_PATH -> $BINARY_SOURCE"
      }

      copy_binary() {
        if [[ ! -f "$BINARY_SOURCE" ]]; then
          echo "The source binary '$BINARY_SOURCE' does not exist."
          exit 1
        fi

        if [[ -e "$AGENT_PATH" ]]; then
          echo "Removing existing binary: $AGENT_PATH"
          rm -f "$AGENT_PATH"
        fi

        if ! cp "$BINARY_SOURCE" "$AGENT_PATH"; then
          echo "Cannot copy the binary."
          exit 1
        fi

        chmod 0755 "$AGENT_PATH"
        echo "Binary copied: $AGENT_PATH"
      }

      if $FETCH_LATEST_CLI; then
        copy_binary
      else
        create_symlink
      fi

      COMMAND_ARGS="$BIN_PATH/bitrise-den-agent connect --intro-secret $BITRISE_AGENT_INTRO_SECRET --server https://exec.bitrise.io"
      if $FETCH_LATEST_CLI; then
        COMMAND_ARGS+=" --fetch-latest-cli"
      fi

      cat > "$PLIST_TEMPLATE_FILE" <<EOF
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>io.bitrise.self-hosted-agent</string>
          <key>EnvironmentVariables</key>
          <dict>
            <key>PATH</key>
            <string>/usr/local/bin:/usr/bin/:/bin/:/opt/homebrew/bin:/opt/bitrise/bin</string>
          </dict>
          <key>ProgramArguments</key>
          <array>
            <string>/bin/bash</string>
            <string>-lc</string>
            <string>${COMMAND_ARGS}</string>
          </array>
          <key>KeepAlive</key>
          <true/>
          <key>RunAtLoad</key>
          <true/>
          <key>SessionCreate</key>
          <true/>
          <key>UserName</key>
          <string>${USER_NAME}</string>
          <key>GroupName</key>
          <string>${GROUP_NAME}</string>
          <key>StandardOutPath</key>
          <string>${LOG_PATH}/agent.log</string>
          <key>StandardErrorPath</key>
          <string>${LOG_PATH}/agent.log</string>
        </dict>
      </plist>
      EOF

      echo "Plist generated at: $PLIST_TEMPLATE_FILE"

      install_daemon() {
        echo "Installing daemon plist..."
        echo "Creating directory $PLIST_TARGET_DIR"
        mkdir -p "${PLIST_TARGET_DIR}"
        echo "Changing ownership $PLIST_TARGET_DIR dir"
        chown root:wheel "${PLIST_TARGET_DIR}"
        echo "Move file from $PLIST_TEMPLATE_FILE to $PLIST_TARGET_DIR"
        mv "${PLIST_TEMPLATE_FILE}" "${PLIST_TARGET_DIR}/"
        echo "Changing ownership ${PLIST_TARGET_DIR}/${PLIST_NAME} file"
        chown root:wheel "${PLIST_TARGET_DIR}/${PLIST_NAME}"
        echo "Load daemon ${PLIST_TARGET_DIR}/${PLIST_NAME}"
        launchctl load -w "${PLIST_TARGET_DIR}/${PLIST_NAME}"
        echo "Daemon plist installed and loaded."
      }

      install_daemon
    EOS

    chmod 0755, bin/"create_bitrise_daemon.sh"
  end

  test do
    # Test the CLI works
    assert_match "bitrise", shell_output("#{bin}/bitrise-den-agent --version")

    # Test our helper script usage
    output = shell_output("#{bin}/create_bitrise_daemon.sh", 1)
    assert_match "Usage:", output
  end
end
