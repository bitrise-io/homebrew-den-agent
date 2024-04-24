class BitriseDenAgentAT2332 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.33.2",
    revision: "3429a5a50652d1c8ceb18213a62398922301d1de"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.2/bitrise-den-agent-darwin-arm64.zip"
      sha256 "c1ea710263bc1413fc4b71386f9f4e9c4455dadadfa2a1483743778147d6b091"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.2/bitrise-den-agent-darwin-amd64.zip"
      sha256 "76483d135acef42a326498dce739a461899d11357fec0ff9bc677f6db7277701"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.33.2/bitrise-den-agent-linux-amd64.zip"
      sha256 "30fb4bbe8ba882ec1f2b1c8da64bc34ac2843268d275e8a183fb80ecc663c05c"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
