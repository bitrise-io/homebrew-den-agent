class BitriseDenAgentAT2461 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.46.1",
    revision: "67a21ba2761460fb236ffbcf46a2bdb9b6cec185"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.46.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "303c98b09e7397ab82acde5607503a1035d1c9c96a2d6b14962231b49e834e23"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.46.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "df853e5dba8f7daf1fd664a7f08655b5951f8912ef2a7ea42a835f11094c5cd9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.46.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "fc7fb174c6fff5754aefb459fc5e12494d97bd547020a0e19c1b7df7e0f87e62"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
