class BitriseDenAgentAT2348 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.34.8",
    revision: "c895098b8d441d4a4e6e183b960e7ee6c23fd1dd"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.8/bitrise-den-agent-darwin-arm64.zip"
      sha256 "ab70a5c7bedd9181c47f09c28a5dbe9620782711a9f08e41f188e7ac4d03121c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.8/bitrise-den-agent-darwin-amd64.zip"
      sha256 "7d315b476f5d7d8df0fe71f96c25f32ca5b67d95aaf22edb735e7b6a48d80c7e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.8/bitrise-den-agent-linux-amd64.zip"
      sha256 "95067235dfaca19794fde13ab5bd00296aed6f995135e6abf14df10b728c4f36"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
