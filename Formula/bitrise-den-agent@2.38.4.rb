class BitriseDenAgentAT2384 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.4",
    revision: "fa9d4e45d10d2ceae2eb1d99926f31568600740a"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "5d7290b017fdd69ffb2c6fa084c157c2d09d4aca4a443a575770aadf19cc7d86"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "c1449ae514cd09f53d4b5df2fe508a52a8314273368bbae7fab60ce2fa6a4641"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "42bd261956ac85d16144946eb52945a1949bfaf62e223f3d0c6634ae842e2db7"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
