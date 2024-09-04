class BitriseDenAgentAT2383 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.3",
    revision: "dae275fe4911dd1d6cf13c17ed8fad78ba8b730c"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.3/bitrise-den-agent-darwin-arm64.zip"
      sha256 "bc5d7527c23578e5acc158983be2a126adac028a21cf4d08f6928ddcbbbb4e0c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.3/bitrise-den-agent-darwin-amd64.zip"
      sha256 "bad58cb79af03b43de86163a1feb00caeb02363d0ac5d0bd4f94d0c9e8b8361b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.3/bitrise-den-agent-linux-amd64.zip"
      sha256 "000e4416c930ccbfd815abe472bed62a4286d1f95e2371768d835b83aaa80cf5"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
