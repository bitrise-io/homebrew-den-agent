class BitriseDenAgentAT2346 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.34.6",
    revision: "9749e0400b5ea77ab57db1b45c99388060ce0512"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.6/bitrise-den-agent-darwin-arm64.zip"
      sha256 "560f1505cd17ca480dd16d27bbae2d7a2323e8479c1374d94e0d45cef5f927d4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.6/bitrise-den-agent-darwin-amd64.zip"
      sha256 "fd7852dfd6a7278f1990fd1a63bfd437faae9c67b05f5b1d94fbf7012883ec03"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.6/bitrise-den-agent-linux-amd64.zip"
      sha256 "1cac677ad6f3924cd1e67b4d7f9d976bda3dbed60c3e760f300ca7777ec679f1"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
