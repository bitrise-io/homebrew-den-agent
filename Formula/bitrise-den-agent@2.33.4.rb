class BitriseDenAgentAT2334 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.33.4",
    revision: "012060856b2acc2cb311ef006e5683342b091cb3"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "3825e7863d8a1436dd8c6fef43672395a12b5e7a4077fae9d636e55bc45c361f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "3c0c19be7a1110865a1644260ba7178cd60f94f0bcc6de5f2253098c6c147496"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "4be6483dff67374731c76e9e13255ac70a8ee001efd171605b34dbce7e4005bf"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
