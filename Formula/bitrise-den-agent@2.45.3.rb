class BitriseDenAgentAT2453 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.45.3",
    revision: "a7d7180e1aea7fa86d044741ec38516f193ef4ff"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.3/bitrise-den-agent-darwin-arm64.zip"
      sha256 "fde28683ad852b9c28cc09f0a50a21722de2b2a84017afa5cd9d3ad805c81970"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.3/bitrise-den-agent-darwin-amd64.zip"
      sha256 "cfdf45da6305a94f3780e5b090fd078c5b92401b4de3fa82e7b92eebe60cc919"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.3/bitrise-den-agent-linux-amd64.zip"
      sha256 "a11344732da857ade23da3a124b9a237fec80da6a48572cc64979f3eb4b77438"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
