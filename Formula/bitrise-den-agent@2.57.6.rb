class BitriseDenAgentAT2576 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.57.6",
    revision: "226532f5aebeba755f9df5c542e44ec00b2d1f3f"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.6/bitrise-den-agent-darwin-arm64.zip"
      sha256 "c77f6e9527db9f789e49aef23d1482ee5aaeed00f92edd581f0276e9e7d77d71"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.6/bitrise-den-agent-darwin-amd64.zip"
      sha256 "5c952eb94afd233969cd241a136f720b09fd6f72e4c1806b296f5500ec978fba"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.6/bitrise-den-agent-linux-amd64.zip"
      sha256 "8d8bb939197e0802231a183064b5eb9d528acbbaf5b4b70f7e57bfd7526b3f24"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
