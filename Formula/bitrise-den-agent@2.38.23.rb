class BitriseDenAgentAT23823 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.23",
    revision: "9855d564fd0bf54e8cacb64f6e830752f80accdd"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.23/bitrise-den-agent-darwin-arm64.zip"
      sha256 "3d44ecfa5f1a190885e9d06cd0ac747aa37a63fb53974d0a6fc5accb69262bba"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.23/bitrise-den-agent-darwin-amd64.zip"
      sha256 "3698451bf0043340b666e50add59a21799980ddf692ae53fb23ee5a1f00c0e72"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.23/bitrise-den-agent-linux-amd64.zip"
      sha256 "9a80a2a17dc75dca7e79148e5f32e40568bbed5d0d5dbe86ad3cc6a0c56476b2"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
