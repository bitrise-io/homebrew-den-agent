class BitriseDenAgentAT2530 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.53.0",
    revision: "06b2ab74a744ed46b207a8187b43e7ecc22cb76f"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.53.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "603fa59b891a9c2767b83749b8dea889b6b44dbabc29a0957b6062b38b5c7202"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.53.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "69771f87b6cae34445a8c81d84a1924c131e7bb47879841b1fda17ec93d8abd1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.53.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "52cee4c4cd9781f48eef177c55cf2b3ceb63faa3abcd53cabf84fe891f4378d8"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
