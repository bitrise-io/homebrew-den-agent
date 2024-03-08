class BitriseDenAgent < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
      tag:      "v2.30.4",
      revision: "930b3b1506bef51d7830376c4c81005e09968ffd"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.30.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "ffd3203f333e1b7090c574f265ac8b6f1df8539e384c08df38fb829a55457b2f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.30.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "8de72ac0de8af0337e0bc067a1d1bf527f10ff7ec407055c5cc11b215257af2a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.30.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "10338752609fb679818578693883aaadd129dfbf7c90bfd480617089ab120c3d"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
