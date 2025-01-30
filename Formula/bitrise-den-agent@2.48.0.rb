class BitriseDenAgentAT2480 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.48.0",
    revision: "f9f11c2ddad63150686095b8e8f8c41e9ed19816"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.48.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "2c5434ecd07766a66ec504a03cd53b2db221ea6328350d50fbfee7a2e9e9d5e6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.48.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "e8f1f6f70533eee2d0356158979c39d65935648af4707aee1dce95eba97cb8c0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.48.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "df340180134a7347391cf8fec6ef95a01c6d7acf7dac68f758cba652aa3d1fc7"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
