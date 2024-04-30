class BitriseDenAgentAT2336 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.33.6",
    revision: "855dc9dce1a21737c39c6615a3f7f64b5c517bc3"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.6/bitrise-den-agent-darwin-arm64.zip"
      sha256 "dfaadb86b745404c9f2209278953d9dec0c6fb32a255ce52606352ce8b989107"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.6/bitrise-den-agent-darwin-amd64.zip"
      sha256 "e0a475c581224029fa54010ed031bddd8ad7546a00a1c3f1833f5adaac2ad602"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.6/bitrise-den-agent-linux-amd64.zip"
      sha256 "2de0c9ebeee263decc90fa1e94a0c4fdaf88dc44a50ea7a9a8e5f20e272548f9"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
