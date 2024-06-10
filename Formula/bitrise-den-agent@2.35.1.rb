class BitriseDenAgentAT2351 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.35.1",
    revision: "957606bbd8a8c04e658837e5d1cef7044c358cff"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.35.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "730db2ae33ce084627018f1c570e26112e25f1b86a463a56fe6d151b6bf6a5df"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.35.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "848b116397a3a2b79572ff2d2dee2500a5054e172e25e39397a1757530c7dc08"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.35.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "6e60280d9a4bb06b8ac92e33eb0f8c8b78030642059ba9fa7e5356ca393e4336"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
