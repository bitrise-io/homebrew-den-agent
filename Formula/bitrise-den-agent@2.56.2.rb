class BitriseDenAgentAT2562 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.56.2",
    revision: "a639965ef5408688f6252704ad0109d28656a472"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.56.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "0961f9cd2238e7c318adeccad88c563d96b12068c0d448109d9fbfc2efddf024"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.56.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "ff6199d9e484cd8fea8c67bf987987b1e109b89be7139811f9a64a7797d6ce83"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.56.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "026841dd78968bda4c82d70f3c6ff6e87d3bb7741258f5d4f11d29a8b995cf57"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
