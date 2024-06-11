class BitriseDenAgentAT2361 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.36.1",
    revision: "459a75b14152a0b42f36a15cf12ae30e78af7807"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.36.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "6915a6ff6ea2c217c25a0c231ed11e780a6a9aeacf3a7322d38c311f84b2067c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.36.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "1b79899c1b375eeed97e52103114926c8ef30b6de31e91230c2b91a980bbd762"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.36.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "4b901526f4056c37284576f9ec3250c38fb0eb4d9a212977722089dd25c51b54"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
