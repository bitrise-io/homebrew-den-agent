class BitriseDenAgentAT2344 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.34.4",
    revision: "b00bc9bd78dc43badac96f9db20ccc0549ed5d68"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "1e4a2094ef40fa53220a92031eb71ec1095fda3e7d8be0975c45a5d0aa24cf3b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "5ebd91283bc7b9bb14d1b2992e5758413cd6a2fc7d3d48c03fa0791760450697"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "7d3b9d673e71fbf851106bd0f6e2141833fa89abe22afedff4c89e1058371d98"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
