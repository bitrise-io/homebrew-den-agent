class BitriseDenAgentAT2521 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.52.1",
    revision: "bbce8da0fe1cf2256f561eaa29e8a202eff88ef3"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.52.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "8740da48e0ec7a39b4a7a6005bf6dde9bd6f79a6647e5d8d38acf6aa09ab5ce7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.52.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "4a3ed11a14cafd9ea9c6ac917836fe053a13c20319bb75bf53f686e7479a0a37"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.52.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "f78214a1257189326433e8b311daa1576c0209b08d585d7c2f5330ae93a61653"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
