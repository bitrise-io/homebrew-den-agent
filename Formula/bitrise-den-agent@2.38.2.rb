class BitriseDenAgentAT2382 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.2",
    revision: "a7f7a875b5fd361b0d9a18749b301130356a35c3"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "e358b434d91343f18e976376a43ee9673bb31e3838ef44882abc528de6179bde"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "4902a1447309354e556b725ade2d11d627f52a31826becae1377f4584daf3873"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "2e778a5988031823886f6e39f1ed3a6a097455ae85c562c0f6fbcbefaa56c77b"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
