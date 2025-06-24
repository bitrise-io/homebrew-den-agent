class BitriseDenAgentAT2561 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.56.1",
    revision: "56b342e012b68f9d386fb9c8cc7a36aa39e91d95"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.56.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "0f1e2b27352e2f3f86c08243c53b18a5d96ebba6797d957081f796e6c9b1b3c6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.56.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "02eea02a9c6ebf3ffb1047d14ec3b0a14ba7c381f88ef4b87217728459ed489e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.56.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "45804adff667f73d2092067489845c8ec06c582efeea7cce57402174c0418136"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
