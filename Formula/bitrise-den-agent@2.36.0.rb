class BitriseDenAgentAT2360 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.36.0",
    revision: "b8181232d50cd3943871b058d3f897ee6cc32d6a"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.36.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "7d93e07749eb1a3619f88214938e80f7d0ba0d55ffbfae5e1bc8dfcda0a8027f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.36.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "5b41d19a21e1472a5d4d9c5ac266649af14f863c50faa35c6b0f9c839119f14c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.36.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "a68289445748ba7a5f6eb4e26f0d9375e414a1ed149d15c8926e20dfa33dcf9d"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
