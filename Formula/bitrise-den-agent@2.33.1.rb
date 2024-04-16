class BitriseDenAgentAT2331 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.33.1",
    revision: "6eca18b3e2284050ea248ef440cdc4c7b129dbc8"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "ac66ee59afa54e2c15ed1ec98ebdad1c3f8e0551d5fac1ad3cd337a823e01e35"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "76373f0ba3945dc9bc8e8a4eecb64d3ee5f9e7bb9c93524859b7ba2259b23714"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "662ef7455c1b61a385e9ccf8792238994c39ced431bc88f6d6165a37e4e6aa85"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
