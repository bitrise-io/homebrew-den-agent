class BitriseDenAgent < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.33.9",
    revision: "01103fe1e22adbecb9b1c3640f479962898865ed"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.9/bitrise-den-agent-darwin-arm64.zip"
      sha256 "5adecb1216d43832bbe842bea1d1ab90c104eaed0e54782676f4515fad8ffed3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.9/bitrise-den-agent-darwin-amd64.zip"
      sha256 "d71b92c6dd8f2871b3b2fb301eff66c6b8ca78d3bda8b6dbb9b67ba661364334"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.9/bitrise-den-agent-linux-amd64.zip"
      sha256 "9550fea53dfb7a3bdb09b33e388f7ab305acbc13c578c802311eb23a419ac94d"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end