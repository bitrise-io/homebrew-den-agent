class BitriseDenAgentAT23816 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.16",
    revision: "caff1b11a041d3ad9fcf082bd96a10836889c023"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.16/bitrise-den-agent-darwin-arm64.zip"
      sha256 "7143b829b6129b58ad3b70e7209f9123626d896d203540ae4267c37373b51961"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.16/bitrise-den-agent-darwin-amd64.zip"
      sha256 "5633465c328451e514b832c8c4df70e88abf54b62b25f2873240949c8d068d85"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.16/bitrise-den-agent-linux-amd64.zip"
      sha256 "d75a88f587f4878bc3041fac84ba3d930e43615f7d74ecc512bdfcfcccbc9b87"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
