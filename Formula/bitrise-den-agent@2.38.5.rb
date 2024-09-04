class BitriseDenAgentAT2385 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.5",
    revision: "8547b3bfd90f2ca6fc359f4590428544f671d620"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.5/bitrise-den-agent-darwin-arm64.zip"
      sha256 "5a0a16e83bf493beb4ad30874b7349596141d9854134b4ffe766bd55db5ea655"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.5/bitrise-den-agent-darwin-amd64.zip"
      sha256 "66e2efc690d42516978fb04ba233cdc756a313f9f99c0eee3b1c4e9b68fc20e7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.5/bitrise-den-agent-linux-amd64.zip"
      sha256 "33a6a496f5bb934a806e97a1131ff92eddf429471ea6e5fdcc0c927c6a6627ab"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
