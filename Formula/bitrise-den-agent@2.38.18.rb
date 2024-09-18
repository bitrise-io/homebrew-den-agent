class BitriseDenAgentAT23818 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.18",
    revision: "794d99b0c23d7e83b07843bce4654f914c48ac1c"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.18/bitrise-den-agent-darwin-arm64.zip"
      sha256 "650b3a024924f56c38a28aad73ff87b89767718c55671b5def52c17e0da9a131"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.18/bitrise-den-agent-darwin-amd64.zip"
      sha256 "b01068315a7503a93e8b7f6200863a3f1b9f401e23b6405966e51c0e9b1570be"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.18/bitrise-den-agent-linux-amd64.zip"
      sha256 "1699e718227a912b34becf3a314fa9334f853bf4fd0ae3679ad9641fd582d581"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
