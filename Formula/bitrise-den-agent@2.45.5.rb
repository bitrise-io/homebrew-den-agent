class BitriseDenAgentAT2455 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.45.5",
    revision: "70ebcc3aabaabc8d49cd50510692f89168c398eb"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.5/bitrise-den-agent-darwin-arm64.zip"
      sha256 "a61e35241c28e07fb6b4ef4c146ddb3089231053953956a8be02c5ad4fdeba8a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.5/bitrise-den-agent-darwin-amd64.zip"
      sha256 "92154c7a2dfa508694d4b05b11ad8c69904a2fa5d1109f592c095cdef9cd0ffd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.5/bitrise-den-agent-linux-amd64.zip"
      sha256 "dffc67898e507ea2fac727044b18ad6b40d5524bd38b94c7ad780f1737666ef7"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
