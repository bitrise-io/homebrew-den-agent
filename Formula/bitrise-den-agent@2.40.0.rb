class BitriseDenAgentAT2400 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.40.0",
    revision: "754f3ddfc9af0b553fd2a66b45acd9ec202163fc"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.40.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "ee98695ccb2eb558c83d885ec6555cc2ce657b89843562e406da457c3787c2df"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.40.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "e6b9d25c5c95bd075c295d916d00eb93556805965d792db2854bcf79091b02d0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.40.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "649564a8c87aa4a271544aa7bfef3e4d6e3a8c30abd80d239cfac72d86ff8561"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
