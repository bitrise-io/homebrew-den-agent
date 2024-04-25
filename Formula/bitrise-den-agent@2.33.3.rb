class BitriseDenAgentAT2333 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.33.3",
    revision: "befbc74ce2b8d82c78ed3d1d093aab0609df0398"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.3/bitrise-den-agent-darwin-arm64.zip"
      sha256 "0a1fe037e28f66f9ee320b99d3c16f8eed4b501e09816f4e71babe6412d67056"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.3/bitrise-den-agent-darwin-amd64.zip"
      sha256 "75c436db48f627332ffbd1a484d49564865d067b7ca7e8f98c7dff9aadc7c58c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.3/bitrise-den-agent-linux-amd64.zip"
      sha256 "97e75424814684d2dd40eba5ee4f75c0c022f11e0171a8163f364cd3952f57ab"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
