class BitriseDenAgentAT2543 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.54.3",
    revision: "88c35f1be7bb1c6b8022006d5944e610d587db69"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.3/bitrise-den-agent-darwin-arm64.zip"
      sha256 "e87e84d757c6aa871730a8d8a2f7eb48d15b075ea6854b4013257a030bdd0c5e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.3/bitrise-den-agent-darwin-amd64.zip"
      sha256 "167178442a253ccccb8d078e594ffb0a4316e3cf0e94c4ac3c740647b6327d04"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.3/bitrise-den-agent-linux-amd64.zip"
      sha256 "4be91580eafca0f83528fe488b9328f37d45bf19e06a27ef532be57eec6dd5b4"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
