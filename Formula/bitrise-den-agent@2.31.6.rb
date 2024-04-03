class BitriseDenAgentAT2316 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.31.6",
    revision: "0d42dad51dc3d2ad77fccf7fa0838ffd42d011c8"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.31.6/bitrise-den-agent-darwin-arm64.zip"
      sha256 "ca45e02e3b92bd38650aa851108e3118ada7a3a4f6572d165c4f0803c0f09fe8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.31.6/bitrise-den-agent-darwin-amd64.zip"
      sha256 "bd81e8b87bf734925a2fd6c98ad73ece2adee59b057417b9dc1858dfe5bf3dc0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.31.6/bitrise-den-agent-linux-amd64.zip"
      sha256 "1f21763dbe373be8c91ea8c2a165a0ef3b720df2094fd6c5c98109260194f55c"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
