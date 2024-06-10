class BitriseDenAgentAT2350 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.35.0",
    revision: "82f11082e90e047617611ff0b2a7c964b4c25cbf"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.35.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "fffb1d2703205eaacf39c5e35443bd76d69cfff5a7fceb739dadceddd929f0e6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.35.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "877ce58a6e310524dd94bbef131f677debf6773b7a31528ca55ed51332f5da36"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.35.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "91a70b195dc55518bc73a58cbb23dce6285b2e2b69281fc14864f8a3e60f0181"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
