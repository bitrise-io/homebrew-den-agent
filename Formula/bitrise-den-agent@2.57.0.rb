class BitriseDenAgentAT2570 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.57.0",
    revision: "17724517202d7c0522b24a5d9aab0dcde78172bb"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "c1d23f182a840a6d830a102f7030ce5782864a61050829cbe1d498d145e2be20"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "0f1eccfe0043775857d3579906ec41b0f795e596420a24e01f72c506c630fd05"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.57.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "350d4de14273336d713f6ba6fad888513ae6df69af83f749c4c50bf6c2334eac"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
