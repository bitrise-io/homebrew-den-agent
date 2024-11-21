class BitriseDenAgentAT2430 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.43.0",
    revision: "f539ff245c5713af16e6953f8107e0da577b0c1b"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.43.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "664bb7cd457ce2b7d8476ab61808e6d4afdc2346810843f40b27460b67c516ac"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.43.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "05c249809aed1e0304a355005ba0fb79c5d56d82d83c8c419a62ae0457142062"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.43.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "97f3c56a37e2846c36ec0f9442c0afc34697a323da1efe1049c30f665df75b5b"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
