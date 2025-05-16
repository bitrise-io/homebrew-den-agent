class BitriseDenAgentAT2545 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.54.5",
    revision: "d52994a8d467e7e93e35354c9e5578646f653d80"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.5/bitrise-den-agent-darwin-arm64.zip"
      sha256 "e4b6b098de419a8d30f7cfb33791ac820c8e92b0f0bfd6e9a5a1074b86cb1156"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.5/bitrise-den-agent-darwin-amd64.zip"
      sha256 "64b5bcf2346d29554589e95d0cea3af8c20f00f8bf612fcd2d6c7b7f9d4593a6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.5/bitrise-den-agent-linux-amd64.zip"
      sha256 "0cd4babfb200a4e88826e0f9658fe98ecd504e2a27ff83b233652bacc334c3a9"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
