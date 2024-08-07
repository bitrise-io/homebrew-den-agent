class BitriseDenAgentAT2375 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.37.5",
    revision: "f75635f5d2fdcf5a74bb713b9cdae7bd3912d0b8"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.5/bitrise-den-agent-darwin-arm64.zip"
      sha256 "844eaa889d33d45f9c062c290b4c70d0f83494872d321b0248904a20ab85a1b2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.5/bitrise-den-agent-darwin-amd64.zip"
      sha256 "1a447149e88ba79315afc44133d861b0bc5d9b66808ca2eb5bac3a89ec65b7b1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.5/bitrise-den-agent-linux-amd64.zip"
      sha256 "9ff1dda41c100b7bb4fc8d4ec39384a7a7b30ce17310e131bec5656587d2654d"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
