class BitriseDenAgentAT2372 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.37.2",
    revision: "814db899586b724dc138d981fd3b33d2ff9f72b9"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "03cccd2bab5465060eee3aaf6db80b6469cfa2789a4e6cef10735275431b4f53"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "5d3d312d660b4451d4068e8f50e030c64159872f1ddb491e3a4fa996a84b942f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "01f7cbaf97313348281fb3746378feee31f434279c3eef3ba2d599c31c04155a"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
