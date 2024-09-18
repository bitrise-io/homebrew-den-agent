class BitriseDenAgentAT23819 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.19",
    revision: "03414ac7ac4f712c81d725226706618c41cd3891"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.19/bitrise-den-agent-darwin-arm64.zip"
      sha256 "0cddb38b93ee443591ada68d85ca124329241467731a48d619f35344e4cc4249"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.19/bitrise-den-agent-darwin-amd64.zip"
      sha256 "d7536103f0a15f3152e3a8dd3c603e436a2add7592af6ebd14acd1486391374a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.19/bitrise-den-agent-linux-amd64.zip"
      sha256 "b6253ade82a79c82265494e7435c5c6886b65a10ecd7334d96d0e31a71bdc023"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
