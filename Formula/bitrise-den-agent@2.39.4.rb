class BitriseDenAgentAT2394 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.39.4",
    revision: "57839e9e9b9c13d3c8424e6cf985492aa544da4b"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.39.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "a1d4fdd51268e01a1f3478eed7be707ea856c0d1b3a68972ceb61fbe513df649"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.39.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "831a2b255e2cffcf34e4b6efba7387ed0c4dd89e8a4105f65871637bb8f20a75"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.39.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "1ac740a30b4ebe46b74023958c07aac3fdf3004a1c09cd4a80ca45bccb9a5d2c"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
