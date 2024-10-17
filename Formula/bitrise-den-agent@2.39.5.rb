class BitriseDenAgentAT2395 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.39.5",
    revision: "57d9f9f50411a84a8b67f627ba836ae179f515b7"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.39.5/bitrise-den-agent-darwin-arm64.zip"
      sha256 "1feb63aa6f001073477f4df94de2d4c2184d98ca6dd48d6213cf4faecb087fb8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.39.5/bitrise-den-agent-darwin-amd64.zip"
      sha256 "7034a6d137c84f38663866ca323ca54d6da89a6b1f49c2da56c32e76dc093bba"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.39.5/bitrise-den-agent-linux-amd64.zip"
      sha256 "bf16d3ff65bc3219e8148be015e938c510c32cce361791a61659c14ca3ed1377"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
