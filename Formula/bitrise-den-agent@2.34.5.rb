class BitriseDenAgentAT2345 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.34.5",
    revision: "b1caf78b55bd594eef4b9510a364ebcd85d3dc65"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.5/bitrise-den-agent-darwin-arm64.zip"
      sha256 "c49f16eb84ab78686b743131d94ac6a60edab82aa574415c33c4199c29688ac0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.5/bitrise-den-agent-darwin-amd64.zip"
      sha256 "6c5089a1ff6f442f527a7ee5f485a19dcead9a54381547f5a916942f83fc3e1a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.5/bitrise-den-agent-linux-amd64.zip"
      sha256 "9ee21444ca686f31a6d048400d526c7ebe6405f0c46c7ab3556557304433ac19"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
