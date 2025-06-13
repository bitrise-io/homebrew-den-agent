class BitriseDenAgentAT2560 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.56.0",
    revision: "355276028d85a285c49d6bac5cb9bd51fea66b57"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.56.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "b4ba8f1f8a9a89d67cb592f44b79ad41bbfc40803d667e94b06e9445dafe451c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.56.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "2562243bba56fb11d92ae09be567acefbcb8c9d9071cc404de8834d58fb44ac4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.56.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "fc890f5e34d3306052a172cd7eea76076dc2fb85d601afd4f1a102432c8af938"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
