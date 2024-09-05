class BitriseDenAgentAT2387 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.7",
    revision: "468340f856364e30468b207db19c2aa11abdcf24"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.7/bitrise-den-agent-darwin-arm64.zip"
      sha256 "790b8d0d0eade8502f672063bfeb9ef1c70f2d9441d372cc104d39587900d719"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.7/bitrise-den-agent-darwin-amd64.zip"
      sha256 "927451bbb2f800a5ee4887fd1ca5469fe1d1a82729f0edaa44eaf8e736288b37"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.7/bitrise-den-agent-linux-amd64.zip"
      sha256 "ba174b1e0064986595994422e72d0c36e9911dfc5b867f29cf6d282c4bbb14eb"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
