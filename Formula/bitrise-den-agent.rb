class BitriseDenAgent < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
      tag:      "v2.28.2",
      revision: "b0379a6dd4f2e036d044af8fe6b9472bf7190ae3"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.28.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "935c5eaf3121d5bad63742f5af5746aee3b048b21a55e409b340b0ecae3e5d8f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.28.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "3e383149298d135defee3b539b222139cfe6df48143111752cdb5a05aac66c2c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.28.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "e8b90a489756d6d9c23993278f560ba3006829d16cc575e3768e1d49c447508b"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
