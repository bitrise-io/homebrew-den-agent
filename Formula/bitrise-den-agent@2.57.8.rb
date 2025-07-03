class BitriseDenAgentAT2578 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.57.8",
    revision: "0dbff5b7339c43c33d6fe7debd4d940559b19ffc"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.8/bitrise-den-agent-darwin-arm64.zip"
      sha256 "fbfd604ce84e97a2f374485f47ea5ad42fdcbfa0789e59d3d4331691cb360ffd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.8/bitrise-den-agent-darwin-amd64.zip"
      sha256 "0f7c039fec30123cccdc67534066276e0b87c3385783ca70226eafcf65113237"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.8/bitrise-den-agent-linux-amd64.zip"
      sha256 "b49f1c03e8efeb187125ba55fa2f8456c3344816bc8c9797387ae6fd14775d09"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
