class BitriseDenAgentAT2501 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.50.1",
    revision: "83adf9798d3eeedddd82802cd277c12306bdff8f"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "5da7089cbb753fc5a2f51b86af5820df9d5f5924b3916a90d80fb59a86e0daca"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "560226ee26a70c04c45c17ec951e44e2a1733679e8f06fce3958b953583c993c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "2815cc09ab230ca50d05be0949daf6448c982593d3cbfdd4743ad9bdbf6c613b"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
