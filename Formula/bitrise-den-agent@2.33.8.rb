class BitriseDenAgentAT2338 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.33.8",
    revision: "f4825ac58cbfca1b9031a9a205e243338cf689a6"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.8/bitrise-den-agent-darwin-arm64.zip"
      sha256 "1b10e88f7ba72c38506697e9a39f80cf663ddfa6d16c8412d39d94167edb1bdc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.8/bitrise-den-agent-darwin-amd64.zip"
      sha256 "f264d9596de2699774c1ac363c6926d4407bc8414869525d1e4a48f54df25edb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.8/bitrise-den-agent-linux-amd64.zip"
      sha256 "fa1b0baae7cc85dc382b532275424c35beaa22ae55d2028e0ed264e2f3461b78"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
