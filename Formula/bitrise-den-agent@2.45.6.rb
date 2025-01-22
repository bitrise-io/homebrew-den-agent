class BitriseDenAgentAT2456 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.45.6",
    revision: "3f8c15a0cb49587d33120966da776641bfcd15ec"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.6/bitrise-den-agent-darwin-arm64.zip"
      sha256 "e301c99e67a2a27c7c09e20cf3da48c6df6afd229b508681478bc3dd3c808520"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.6/bitrise-den-agent-darwin-amd64.zip"
      sha256 "b69c594cb097cdeab0a8431c769d8e35529afce9248fdd6e292b55324dbb0517"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.6/bitrise-den-agent-linux-amd64.zip"
      sha256 "12442df27a45c88011f8586647d5dbb36ad93cd36dd86d1d631c401517669967"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
