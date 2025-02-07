class BitriseDenAgentAT2505 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.50.5",
    revision: "4cfc67beadc690a806f999cbd934e3a5aa7b04a8"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.5/bitrise-den-agent-darwin-arm64.zip"
      sha256 "30e5148f37b8f26e7402b3e047560e2ce915419567a049f6a8fd047d9e236b38"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.5/bitrise-den-agent-darwin-amd64.zip"
      sha256 "698661bfc8d5ff7e06e91a41b9e60915848e1d38152c111659dff52c341c4ec8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.50.5/bitrise-den-agent-linux-amd64.zip"
      sha256 "3ddd519dbba80e281f2f992247954bf91c795bdfa4b72428ebdf307ae37d2fa5"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
