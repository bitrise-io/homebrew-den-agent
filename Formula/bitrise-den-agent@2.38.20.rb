class BitriseDenAgentAT23820 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.20",
    revision: "e50d4b0b1d115d1b1c05c6653fb39953fad9e237"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.20/bitrise-den-agent-darwin-arm64.zip"
      sha256 "339126ec48e414b6b91ee9c893444104b81190749112f5b1f9625711633987d7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.20/bitrise-den-agent-darwin-amd64.zip"
      sha256 "208defcaf77999f4dd0c93357673c2e089fdc64b79bddcad6f61611cc4a16af4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.20/bitrise-den-agent-linux-amd64.zip"
      sha256 "ef18694c8237192ccaf5a0e9cfa3bafc27dcbbfbf0043df261797278571a251e"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
