class BitriseDenAgentAT2574 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.57.4",
    revision: "3d15f9037323b0f7991a2d7e6feb20de49d555e5"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "3cda1820a885153b6c7eb0f0baf62ec5446a95025febd51af42a17aaad841bb7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "2073e10f6fdffa7fbeae6593915cd30f21799db5b3fb2f35bd85b49af9fafea3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "d21dcb4b35fb4fa648ee774316122bcc2dfebfc17a22033215e4fcef1772d6e2"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
