class BitriseDenAgentAT25710 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.57.10",
    revision: "af8fd335b56beddbd7ad1a20e45063b81aae3348"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.10/bitrise-den-agent-darwin-arm64.zip"
      sha256 "b145e0a0eb36c9e469155a767bfc3f50893995074b8193230c180e9233cc229e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.10/bitrise-den-agent-darwin-amd64.zip"
      sha256 "cfc4fb45c6360187054cf174ca2812f4ea06ac35878f695da5e89151160789bb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.10/bitrise-den-agent-linux-amd64.zip"
      sha256 "4a9b9356d56d3b96244f25b9a3056c8744361596f19cc8571b233bfcf91814b8"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
