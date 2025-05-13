class BitriseDenAgentAT2541 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.54.1",
    revision: "8c88ee2328e2d005f65f26a8c92c81d912885db5"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "8dab455779a4bd899797b0e35ab5805fcec5c7679f543a786230bcf549453a65"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "8b6108cca5ac3eac9da9cb72241ad75a9db2a07b94406ee71d7aab0b9aa374c7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.54.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "527d900ee3b72981ca19423cad679dbae0e5e89964d97e7a2a99fe61513e109e"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
