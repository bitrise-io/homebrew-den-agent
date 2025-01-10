class BitriseDenAgentAT2451 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.45.1",
    revision: "0ed767a8bb51f23c55107f0b1a012a5cf104500c"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "17aeaafd4f3e6b73a70cf889befd27a3755569461cfd06a626010ad0d46c4965"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "9e35a5424c2c3074d5b58c0141d9084c9415c7cc9952d8665c34d48f0e3dd4ae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "c1691e0b8c4a3a6c858037e06d199a38ed9f04047f7c8a2629c9e2c12a3a8788"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
