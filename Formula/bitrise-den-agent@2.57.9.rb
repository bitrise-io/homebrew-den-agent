class BitriseDenAgentAT2579 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.57.9",
    revision: "9da293cd446a4729d297f855f7974c04418512bf"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.9/bitrise-den-agent-darwin-arm64.zip"
      sha256 "c31a90728384226a190f0a63aa1d20d4d8b3f2c319d87e8f754b4a0377b7a4fa"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.9/bitrise-den-agent-darwin-amd64.zip"
      sha256 "f06fe1d7bb10e371c4617eb925d94ef8b8f73e5b98a73d40bdc09cce8a56286e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.9/bitrise-den-agent-linux-amd64.zip"
      sha256 "5c244064964611a24261e3a164c4e4ad0c9bbeaca6a10dfa1e7d787392e9410b"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
