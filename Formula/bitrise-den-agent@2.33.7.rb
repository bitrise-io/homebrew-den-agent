class BitriseDenAgentAT2337 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.33.7",
    revision: "d61cf16006d8ea0c21bfe9abb6cdfb52d918b902"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.7/bitrise-den-agent-darwin-arm64.zip"
      sha256 "29b29696df9664dd2f1ffd4b57cf3d8a280dee5a50161fdce4a8fc7af545dfc3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.7/bitrise-den-agent-darwin-amd64.zip"
      sha256 "713a135edb7f891b7beb2dabbe2a2ad1d1a60287f31b39eab79ea95f52ec8510"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.7/bitrise-den-agent-linux-amd64.zip"
      sha256 "d682b402f439d434fa02baea92b2fb553b21c036a3ecb12d391db2bf5704ff8a"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
