class BitriseDenAgentAT2557 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.55.7",
    revision: "bbf230f5a3ccc6948f76c7d19e321559d0015160"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.7/bitrise-den-agent-darwin-arm64.zip"
      sha256 "f21a72769f59ab2112cb32323a4c52ef858db0fd347efbb9c2931f4a42170172"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.7/bitrise-den-agent-darwin-amd64.zip"
      sha256 "3b698a6ff0899241ef9224ae114ed61a38f0072a307ffc163cfc20e4af4dd11c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.7/bitrise-den-agent-linux-amd64.zip"
      sha256 "8d53534f1e9f01122540408ba70100a9dffaa9c089c93cf1276406605b070a8a"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
