class BitriseDenAgentAT2450 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.45.0",
    revision: "aaec8896faa7530bd8f735b8158e36b53333af3b"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "49750b437f0523dcc6b78ff390cb9fd68528f74bfb3ffacb8be7ac9a80229b73"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "738706f19125b072d0a32bc3562e2bee28fec7f15f7c3b42b6531eacb1b88a87"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "eb3cf6ebadf38b8cbe640357f73aa4e3e74251a26ed5b4be30145312c5bb3ac1"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
