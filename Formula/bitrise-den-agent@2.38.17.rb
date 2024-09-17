class BitriseDenAgentAT23817 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.17",
    revision: "8c71463793688bc6f172236b9eb500f2c2ce4a06"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.17/bitrise-den-agent-darwin-arm64.zip"
      sha256 "24830592592a8cf171d817910a90d8fb527a67d62aaa2cabcb4d3a38ee448589"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.17/bitrise-den-agent-darwin-amd64.zip"
      sha256 "e44a055fa038033eb5e0d5fc64f18d90d58123a978382076ce836e431dd464a7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.17/bitrise-den-agent-linux-amd64.zip"
      sha256 "44199dc1f5de55114409849c9db48e57f2ac86e44d730dc86704913712c503ec"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
