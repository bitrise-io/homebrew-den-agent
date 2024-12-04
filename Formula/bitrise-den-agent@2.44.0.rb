class BitriseDenAgentAT2440 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.44.0",
    revision: "4cc342e4babbc2987bc3709b500b37df5c934c7e"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.44.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "a5565b5b1a471e53065b31bdb0c97a52d31e2dc0a9bd9755da3f282173c0b419"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.44.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "2cbadee3a9ec89d1fb95916ed769fb8014236ad2001dabb7adc6d5b553920e96"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.44.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "bd8f8af35f6c9dabd223be600d9dc6d8e3e4ee7ce912b724daa62d3894107a7d"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
