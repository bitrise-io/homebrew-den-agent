class BitriseDenAgentAT2526 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.52.6",
    revision: "fe5b2da54b2b7d9ee6c9ebb790cb2fa37bd3b1a6"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.52.6/bitrise-den-agent-darwin-arm64.zip"
      sha256 "50475dd07b2156ac0222a107bea711fc2cba9e894dde09b19e8cdd6075313815"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.52.6/bitrise-den-agent-darwin-amd64.zip"
      sha256 "937c7d1761626a278884eb706e0c4d4f2b579f05d0f82b329533925babce637c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.52.6/bitrise-den-agent-linux-amd64.zip"
      sha256 "c553180b3fd53ffbc5ef1dc87d4f772558839ac057e07d9c73fc236ecf9e8a69"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
