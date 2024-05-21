class BitriseDenAgentAT2342 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.34.2",
    revision: "1f2452237f3cccc512f41d1d686d47a7b6e90a47"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "ce4efebd4541a6832fbee8c09dab8e3ce075efc62d160a7ae441322355e1c941"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "f7a817b1418601d81fa6af0b64408309fa89500c516a3fa41eb9a496ece04030"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "7efb519215523515d3f85f47f250ba4a4344fa712cc9dd87bb3a1a759183dbe0"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
