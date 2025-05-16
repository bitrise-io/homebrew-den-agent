class BitriseDenAgentAT2544 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.54.4",
    revision: "bade7375ccbbe01c1c8f21d9a420dadb4b468534"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "5854fc8bb2e38dae2c9de9376f372da5990be55bf8ed85d74f69cd06638dbd26"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "dd72fc8f48f32e086aa404812a8ee8466df1c58d65d5178231aee13b062fee48"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "1f957d9cee79a79840bd730fbce111cea9b14283972d27193c34194eaf6c9a8e"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
