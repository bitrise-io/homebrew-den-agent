class BitriseDenAgentAT23824 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.24",
    revision: "06e4ea0a8898be7292282cc18760c51561444cc4"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.24/bitrise-den-agent-darwin-arm64.zip"
      sha256 "9e2ae633d95a2b5a3565dec89125c1f3f6c5a17a1e4ec70e46601011153f52ae"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.24/bitrise-den-agent-darwin-amd64.zip"
      sha256 "d3097819ad8e6ad29fbff66c9df8e9c1b9e4b0cfd8a6147733f53e51931797b4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.24/bitrise-den-agent-linux-amd64.zip"
      sha256 "f9972c9802461318d2da4a277d9a2584f0f8da645f4a3f309480cd6392b0f28a"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
