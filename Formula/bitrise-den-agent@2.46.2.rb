class BitriseDenAgentAT2462 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.46.2",
    revision: "5bcc40445858044ffceb57f77903ece9b1879b74"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.46.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "3e15648c16704b3bd0ecda8ea4a470e12b01fd015533671a3022bfa69fa500dc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.46.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "6e67d7601849c2ea2970ada0935c6874a71843b6f98f8c5b0d0da872a8091173"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.46.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "d696da0762c6e10bfb604ec71a761009ae6f81dc931484ab805ab9c07f8ed0c2"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
