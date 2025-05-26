class BitriseDenAgentAT2552 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.55.2",
    revision: "045280712ac2c55fcb2aba2365a9b4d7a4603869"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "4762a1c13ab6bc59fdf27b7cb7eebbc08d615a4a1cb350108c3f8475993f0d90"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "c77e0fcd0b3ef5d002bcf17b63205a280ce5111ac9ea8f5086bd770597de3f1a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "fcf1c4cebebb3ab70b04ae899adac47f45b4a35149a04b88df97387fc43a391c"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
