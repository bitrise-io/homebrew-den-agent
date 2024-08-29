class BitriseDenAgentAT2381 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.1",
    revision: "ffde051e1794cd185298c919d69a19b8f133878e"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "128e46390932df6d58fa8688ec2ed8af0d8216ba7a69461326c6d0eec9656308"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "30db49c2e25387d7008de40961fd06b65a7ca9b510d0ae6b9584d49236aad9ae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "2e2305f9e0539fbfd0f65fe0385a8e3c467ae96b1a6f6bd15be9c409d28f9388"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
