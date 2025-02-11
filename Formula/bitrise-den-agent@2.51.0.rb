class BitriseDenAgentAT2510 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.51.0",
    revision: "f17542fae387b3a726bf648847578f7f8ef890e7"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.51.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "1c021472b904d00b7826b39d04ecc875ba849a2c51174a148a29da4ea4352d63"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.51.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "c1a2f8b844ccb67426de31c260a90d5677376645dc6a22fe718e9600d59f4ece"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.51.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "6433ab3c9a8fde13456ca814a78491b80191503b998d2642d4b392320919426d"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
