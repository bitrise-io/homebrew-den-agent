class BitriseDenAgentAT23822 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.22",
    revision: "c27543d3f68f162d863a8f64fe11d16ddf569794"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.22/bitrise-den-agent-darwin-arm64.zip"
      sha256 "d6de1fe35b716fab10cd7a1cab50941038880bd6ce7a3e4b1a4948275760909f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.22/bitrise-den-agent-darwin-amd64.zip"
      sha256 "2c5e8c9315dfc5ab25594b0f0d337bed9b6b058e6088bd031865d32220d8ccaf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.22/bitrise-den-agent-linux-amd64.zip"
      sha256 "1d6f97563871a0ae11992948b20c7cc91d204ec7d3e88be455f2119c7c16dc2f"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
