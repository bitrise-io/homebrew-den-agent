class BitriseDenAgentAT23812 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.12",
    revision: "b82f0f2e210f92046d954d3505f628d29e82f806"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.12/bitrise-den-agent-darwin-arm64.zip"
      sha256 "143bf3bbc5f71fbf742b2cbd4a3b3765e765350101c9b5fa109cbe3db8030aed"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.12/bitrise-den-agent-darwin-amd64.zip"
      sha256 "d1e689bb529e0e86aa9989798de0157d3ea478fc738a261dbfafb3f0cdce7851"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.12/bitrise-den-agent-linux-amd64.zip"
      sha256 "e238cad95d000b6a4cc8e133781debcf88edc7c7891b1ccabe25671decff37f8"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
