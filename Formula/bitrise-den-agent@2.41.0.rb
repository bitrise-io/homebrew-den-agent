class BitriseDenAgentAT2410 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.41.0",
    revision: "e5bdf15934680d6ece0be2770d1be4263cce7a76"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.41.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "c793ae4d7f707a38efad4e25a8eeb9d207ee7e260371416545540b55acd3d42c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.41.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "0a32e80d8bf22e081903a0729dfc33caca6a6b0d34bb1af7894ae573ac0a8b93"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.41.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "03d2a8c06393e034cea7954da3a49196f00769ca03ff24885861fe766396f135"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
