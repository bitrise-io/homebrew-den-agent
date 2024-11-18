class BitriseDenAgentAT2420 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.42.0",
    revision: "fc87072f7fbc61374db773b2120c5ed3b4388f7c"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.42.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "5741ab149cd396b60286e1277f4e3d4d808cfc656306602043ecf0e351b77dc8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.42.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "f9820512ce43d187aec5c2b99b2e1cd3e612a67b8ba7853250e41176b6a7ffae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.42.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "80b4ec1900486f637f67b09276427325bb650bdcd96788563845cb5819e3d5ef"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
