class BitriseDenAgentAT23810 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.10",
    revision: "2734133a0aa39a502f56159c17993a200f579031"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.10/bitrise-den-agent-darwin-arm64.zip"
      sha256 "e42d8b1d947c2ac1c23c2ea26308afd357fd18e9f6355a24786337ddd69824cb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.10/bitrise-den-agent-darwin-amd64.zip"
      sha256 "994f32d47ba8734fa8727bc951c65ae4b01659a1da8fb646037b466cdfbdea26"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.10/bitrise-den-agent-linux-amd64.zip"
      sha256 "6d5c818fc520971359f7d6e7174c0578cf89af3ed2e322a39526d4f47a193b6b"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
