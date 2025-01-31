class BitriseDenAgentAT2490 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.49.0",
    revision: "91d6c2b587234dc78196caffebd82eab02fecd9c"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.49.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "1932a6377de05b4676847ff79987734aab90f114fa65ee90cd9240092710a10d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.49.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "5f070ba95ee4e554e4fb945dd5b745e463f697ea61fab97f50e8ff24cd03335e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.49.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "8333b236fe951c364c45a9de19681cb10348511cbded8e28983a571470cdcffe"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
