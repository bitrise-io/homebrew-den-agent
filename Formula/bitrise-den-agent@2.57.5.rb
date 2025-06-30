class BitriseDenAgentAT2575 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.57.5",
    revision: "ef1db1611b8ea82500550e9e931059a28a51ae32"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.5/bitrise-den-agent-darwin-arm64.zip"
      sha256 "e728bb2081d02ab4f96f120cd684690748c3dbc255ec6ab0130874972f77d728"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.5/bitrise-den-agent-darwin-amd64.zip"
      sha256 "21060b7571bc94b126966fd1660c35808ad7a0ef1973624eaf34cce3acd24ed6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.5/bitrise-den-agent-linux-amd64.zip"
      sha256 "0bb4827d5bc8224e794091ac24aec5b33179683022017e9360487a40a9d9d87c"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
