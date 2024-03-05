class BitriseDenAgent < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
      tag:      "v2.29.3",
      revision: "27440f1768caa1e9f018fa5d3b9a7fda37343aa0"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.29.3/bitrise-den-agent-darwin-arm64.zip"
      sha256 "79386642392366a564e272ca56b04e738cc87de5c87225744a787d3e3fff38b8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.29.3/bitrise-den-agent-darwin-amd64.zip"
      sha256 "7dad2dd6c05114770dbb838cc48341da368519617fdb14abd1f3226e84a3b75d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.29.3/bitrise-den-agent-linux-amd64.zip"
      sha256 "91e14450d676e481e1a12f3b167a9538940727fcbc78a5c832f71022cf6487d8"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
