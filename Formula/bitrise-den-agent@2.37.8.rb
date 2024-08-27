class BitriseDenAgentAT2378 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.37.8",
    revision: "88e600e18f018cd64eb089964c52a5a1b989a875"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.8/bitrise-den-agent-darwin-arm64.zip"
      sha256 "3c2642c03c12b3dbe29e859c03e5dc8a97c39078e65251426b2aa3db35b099c7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.8/bitrise-den-agent-darwin-amd64.zip"
      sha256 "08ac72ce69d9987ccd4bd14f06e82e802d623c084bbba80ee5e40ded33d83010"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.8/bitrise-den-agent-linux-amd64.zip"
      sha256 "29e04c744e1086c9b72f46c018db9a6712ade53f11cae3901e5f78778e6201f6"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
