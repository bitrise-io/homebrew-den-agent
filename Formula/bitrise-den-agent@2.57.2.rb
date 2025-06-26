class BitriseDenAgentAT2572 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.57.2",
    revision: "dbf7212df6c44ddb88662be315b5dbe4a3b23380"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "d025dec2432f936832f00f833bb3f8f17e8604ec2b6efaec951e6c4c207332c8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "0b135e030bdeb846dbb020cf4d297182224be838149ed3ffb5c9118c5433e429"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "d9f1dd74ea089421b472fe6afbde3f749d2300da9d29b9ebbdcfef1c18d91199"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
