class BitriseDenAgentAT2386 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.6",
    revision: "ebf89d977c410ef602153fa334da8d0e31d395ff"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.6/bitrise-den-agent-darwin-arm64.zip"
      sha256 "f037f64ed01a231da73047062c361e18c88348acbc05a6e55dbe21abfadaac2f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.6/bitrise-den-agent-darwin-amd64.zip"
      sha256 "e5d1e16213b8df100a970baf49077c8787b4edaf72073203e6f11ca944a7be77"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.6/bitrise-den-agent-linux-amd64.zip"
      sha256 "39495796f17695c9dcf738d3672ed36a20b381c831036cc6ef0ee4d73434eb9a"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
