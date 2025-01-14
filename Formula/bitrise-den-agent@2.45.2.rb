class BitriseDenAgentAT2452 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.45.2",
    revision: "eebebd959195889affe64ff564e7fa8be851bded"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "de103accdb494066d955027ec98c74fdb9f713d432d5a98012edb73dce9308db"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "be16fd331c75413f9682afe7862a2267815116798a6289e2cddbb68f5405b7e4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.45.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "b871dc584e808817adc5816536ffdaa7074ba6f3d45245bd354d6fcad8746d44"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
