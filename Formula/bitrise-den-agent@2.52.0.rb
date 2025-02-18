class BitriseDenAgentAT2520 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.52.0",
    revision: "a1f2ef3f7ba8b3922b7b6be69cb9eb8ec7be2c4b"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.52.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "7b099af70e3c76d055aac2a9d49f8795f840c3d13030e939343b7d0b9d2602a7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.52.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "e8a71452c7de9dbf5a75c50565bcc98b2a003a5d38c0e0d99be9af59ad154a33"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.52.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "aa23fe9be7276208ef6e0dc7f4f0b426283c7163d0bda1e9b0067e82911d615a"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
