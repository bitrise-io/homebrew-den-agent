class BitriseDenAgentAT2504 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.50.4",
    revision: "1d8661efffbc2ea608a898d3f864380660c24f38"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "e0c5e069137412caa8620494f922ec67774b0c99b4bb6c6058d3b955403cf154"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "a92b52acef3241f48f1b288b84f95547d1ebac1ea878444a951dc5dc6830a1b1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "2bfabb1f27653528315060faf540a4ded60bb1da7294471beb96075a333b7633"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
