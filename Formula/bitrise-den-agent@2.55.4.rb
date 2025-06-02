class BitriseDenAgentAT2554 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.55.4",
    revision: "0c1395bae699761918cdc28c8d4b1d573b508e53"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "7701bac309fc3ccfd53bcf26597fb238a6a664c9801e11f23e64fa61ca1411ae"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "16af9f21a000b9c06e49c7b98b4cf137b6c837beb9078fa5de5fb5e62e1678c5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "6165c2d0c3bdd11939d20608ba1c1c0a44a473cbec4fed521e5a96b03280d68f"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
