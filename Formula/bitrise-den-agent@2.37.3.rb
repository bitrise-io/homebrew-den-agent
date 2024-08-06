class BitriseDenAgentAT2373 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.37.3",
    revision: "aace89fff5e3699489643f852baebf639cb05a31"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.3/bitrise-den-agent-darwin-arm64.zip"
      sha256 "cad4a96abcc586d68f98241c9658948d34f603bc71410cbe45832a8152baf4d0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.3/bitrise-den-agent-darwin-amd64.zip"
      sha256 "e24c0be929ae4c7fb26571621270b73b6ef891154bbb33d6435f266e1f1ddfb1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.3/bitrise-den-agent-linux-amd64.zip"
      sha256 "2601159eb9d3a44ba57d9bd0729b67bcdb636f65dfbb713f381b5532e0cc166f"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
