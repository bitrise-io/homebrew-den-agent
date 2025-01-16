class BitriseDenAgentAT2454 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.45.4",
    revision: "f76268085f5c6eeb219d8da40bcb697c58ac16d3"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "c9a24ab26d6b1e5dc6ce83db494d58a1d563405ce8a7b10bcd46f95f9a4c0a84"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "1730f4945cf7e6929c56ec21dcc5be831584ea94734cf73a0e81c637801c7cd4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "835ab6edf0032cc4543832e5aa51e29991ad13b710d66b41088cfc350b0ed163"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
