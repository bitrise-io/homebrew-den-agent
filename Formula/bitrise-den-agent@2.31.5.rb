class BitriseDenAgentAT2315 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.31.5",
    revision: "492cb372e4987484167d75eaedcaa43d278707e6"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.31.5/bitrise-den-agent-darwin-arm64.zip"
      sha256 "e0d408367e292097f09129bf855db14e80c7947e330f1835b4cba8e695d77728"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.31.5/bitrise-den-agent-darwin-amd64.zip"
      sha256 "8b24fea0017bd3677a1b52ec149e887298f68913b849cdf3b57cf45c501420a9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.31.5/bitrise-den-agent-linux-amd64.zip"
      sha256 "8e7a34ec730c962f799bc1906eb82933e1a0b4c74c1f83f1f1182eaf872494c1"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
