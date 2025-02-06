class BitriseDenAgentAT2503 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.50.3",
    revision: "4f5d9f0776cb6c45b5bf64bf13d40bf5c1988b37"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.3/bitrise-den-agent-darwin-arm64.zip"
      sha256 "2b06a8333af6b2bd1cd20aaf4858a3d46f5631a015418badbfc960d8cdab82d8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.3/bitrise-den-agent-darwin-amd64.zip"
      sha256 "52a6621ea4f00e94332030bfbdcfbb0cc640633058bdad5a5a3167667c03f759"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.3/bitrise-den-agent-linux-amd64.zip"
      sha256 "879a6a6965e590917329e61057f952c346eae9616670479578b1f9393fd989ae"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
