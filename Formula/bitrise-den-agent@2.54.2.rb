class BitriseDenAgentAT2542 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.54.2",
    revision: "501800c99c01fefd7cb80d6b9c279a554e38b479"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "74ec5ef52d6cc77bc78fbcd77a5db9d94fe91aa7d63940352322e5ce796ef664"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "55c16f965e2fbac3d8b146f9d18786b70be38e90fb7f47851c7085b0d7d5ad3e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "6a3aca18a87accc05dd240f892733e3af091bc66cce932726f3d794e986a2ba4"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
