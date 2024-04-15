class BitriseDenAgentAT2330 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.33.0",
    revision: "70889442a7f2796ed3a0bc30f4e9a5b5585fd605"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "c34bfe58d65d3f880cafce6561cf8ad56a5d8e6eb87d7c8c47321d7898599883"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "3ebd3b755e101a875a7f37f9394cd844bd35cc97557ee40a884aa8921f6348ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "cb5f55e5d563a7e6de48d394874681d4afd7a9e4f2eee0700bd006bbeec001d0"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
