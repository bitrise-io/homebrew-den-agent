class BitriseDenAgentAT2577 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.57.7",
    revision: "2aebc08075755a0939e83890633ddec82cbe049d"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.7/bitrise-den-agent-darwin-arm64.zip"
      sha256 "42a72aa16414d05ed3651f092b71457f1717b7a3037c606fedaa147410cea1a6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.7/bitrise-den-agent-darwin-amd64.zip"
      sha256 "fb870ae94df0c0be4c5a1f632f50f679ff30cac0983b51191a338d0d41c426b4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.7/bitrise-den-agent-linux-amd64.zip"
      sha256 "dec4053bed48768457acda1da4a8b28b33dc8b71bda474d888196edc7c2620ac"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
