class BitriseDenAgentAT2551 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.55.1",
    revision: "58caa5bd4e57fd6fb656fab30cf649e0a7d175a9"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "0ecc146d7a7e8ce6f5a8fe3580a37bde0a50646a8451aa7958dda338fdb3e861"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "a79beb6846587fec0ef44f438153f6abb113a3aff998dfb4f494f885d6aee8c8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "10f9a6475ab58f6a48ccc7f3b1ea65f844a0f8b24c6ed682fd639def044a63cd"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
