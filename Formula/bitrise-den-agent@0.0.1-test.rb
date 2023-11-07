class BitriseDenAgent < Formula
    desc "CLI for Bitrise DEN agent"
    homepage "https://github.com/bitrise-io/bitrise-den-agent"
    url "https://github.com/bitrise-io/bitrise-den-agent.git",
        tag:      "v2.15.0",
        revision: "3d724928a5d075c4bee971880d6a1dfa34fbeeed"
    license ""

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.15.0/bitrise-den-agent-darwin-arm64.zip"
        sha256 "9e36daa6c66a1043dd91f94f4a865cf1fa13951be6e3e0285a3d10864975befd"
      end
      if Hardware::CPU.intel?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.15.0/bitrise-den-agent-darwin-amd64.zip"
        sha256 "788faebabc240dcc1f04d180c8184b8555587f82245a392a0a9fee69aa066ef0"
      end
    end

    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.15.0/bitrise-den-agent-linux-amd64.zip"
        sha256 "42c5f85b9516e83e6208f8c1c77b407de1355e00f681885d67632423fa8108df"
      end
    end

    def install
      # Check if ENV["HOMEBREW_BITRISE_INTRO_SECRET"] is empty or null
      if ENV["HOMEBREW_BITRISE_INTRO_SECRET"].to_s.empty?
        opoo "The HOMEBREW_BITRISE_INTRO_SECRET environment variable is empty or null. Please ensure it is set before installing this formula."
        odie "Installation failed due to missing HOMEBREW_BITRISE_INTRO_SECRET environment variable."
      end
      bin.install "bitrise-den-agent"
    end


    def plist
        bitrise_agent_user_name = ENV["USER"]
        bitrise_agent_group_name = Etc.getgrgid(Process.gid).name
        <<~EOS
            <?xml version="1.0" encoding="UTF-8"?>
            <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
            <plist version="1.0">
              <dict>
                <key>Label</key>
                <string>io.bitrise.self-hosted-agent</string>
                <key>ProgramArguments</key>
                <array>
                  <string>/bin/bash</string>
                  <string>-lc</string>
                  <string>/opt/homebrew/bin/bitrise-den-agent connect --intro-secret BITRISE_AGENT_TOKEN --server https://exec.bitrise.io</string>
                </array>

                <key>KeepAlive</key>
                <true/>

                <key>RunAtLoad</key>
                <true/>

                <key>SessionCreate</key>
                <true/>

                <key>UserName</key>
                <string>#{bitrise_agent_user_name}</string>
                <key>GroupName</key>
                <string>#{bitrise_agent_group_name}</string>

                <key>StandardOutPath</key>
                <string>/Users/#{bitrise_agent_user_name}/bitrise-den-agent.log</string>
                <key>StandardErrorPath</key>
                <string>/Users/#{bitrise_agent_user_name}/bitrise-den-agent.log</string>
              </dict>
            </plist>
        EOS
    end
    def caveats
        <<~EOS
          To start the service, use:
            brew services start bitrise-den-agent
        EOS
    end
    test do
      system "#{bin}/bitrise-den-agent"
    end
  end