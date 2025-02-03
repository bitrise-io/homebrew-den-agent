class BitriseDenAgentAT2491 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.49.1",
    revision: "0d6d6730c896e2f12e02e1db82fe024ce848ec64"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.49.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "f73be9ee9ac28a67a9641cb0376a7d550b531db2939e63a1f7e0fdcfbe0e919c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.49.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "3abe3b76c311cd5117fd28c2fe40fa820892804f5b4fa94b6f3acb058e36229c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.49.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "5e68eb24ac2cfaea44fe48c3fcb4bdcbfd6d93730710efe978420954a7e11473"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
