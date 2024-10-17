class BitriseDenAgentAT2393 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.39.3",
    revision: "df8d8b9c7b3c2ececb82dc44dc802a59259f66b0"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.39.3/bitrise-den-agent-darwin-arm64.zip"
      sha256 "adccfd09389277da964150c0332d68356244927550997725acd25267e54ab2be"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.39.3/bitrise-den-agent-darwin-amd64.zip"
      sha256 "33c1cda3cacf0bafce7ec47090e4e27f8fbf28a4f971288b37b8a82d26b6b6ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.39.3/bitrise-den-agent-linux-amd64.zip"
      sha256 "1a8f0c29a418cd6f7b18a8ba136b85d17c2171e98d9b25ccbcb9e54a1e1f1854"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
