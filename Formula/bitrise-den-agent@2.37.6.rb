class BitriseDenAgentAT2376 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.37.6",
    revision: "beb84ff2e7dcab4351bca54d057486b7e14b686d"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.6/bitrise-den-agent-darwin-arm64.zip"
      sha256 "68a7192e6bbcfaee540f052f49a279f11ad339a6b30eab92f0adc61e75b89b0d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.6/bitrise-den-agent-darwin-amd64.zip"
      sha256 "13f9896df67d0397ae1e0ba1818d1a31d33010ef39a48e8ca20b6ae16fad3ca3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.6/bitrise-den-agent-linux-amd64.zip"
      sha256 "da26386213d53e127e7a6e5d33ea7bba720fcf4217ecd9e3f7fd8c2fb6d33feb"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
