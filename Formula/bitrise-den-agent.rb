class BitriseDenAgent &lt; Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.1.11-beta/bitrise-den-agent-darwin-arm64.zip"
      sha256 "-arm64-sha256"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.1.11-beta/bitrise-den-agent-darwin-amd64.zip"
      sha256 "-amd64-sha256"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.1.11-beta/bitrise-den-agent-linux-amd64.zip"
      sha256 "-amd64-sha256"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
