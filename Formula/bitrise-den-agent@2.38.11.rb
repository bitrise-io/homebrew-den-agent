class BitriseDenAgentAT23811 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.11",
    revision: "e6b54d5823b81bbc3baf126f7d519bf1ee2bdeea"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.11/bitrise-den-agent-darwin-arm64.zip"
      sha256 "051953a1c942c93aa4d8c96688c88b869629da6e58fe2353851bc3da7a862a65"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.11/bitrise-den-agent-darwin-amd64.zip"
      sha256 "675e1331c812b248e385acdc27841a246dcc9b47d3161ef0e10ae428bf2b8333"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.11/bitrise-den-agent-linux-amd64.zip"
      sha256 "3147c0f1c9c467fa3d08b001173b249b1136e44badf113a736e0bd92b138a38b"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
