class BitriseDenAgentAT2553 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.55.3",
    revision: "63e0d757c56439c97f7fcdfc9a389b4202f35414"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.3/bitrise-den-agent-darwin-arm64.zip"
      sha256 "dafc3adc292e04f126b77f68c617632883dd1e643fa2090ed69ccd69966a8264"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.3/bitrise-den-agent-darwin-amd64.zip"
      sha256 "4315819b893d782faea84807013b97e30bd1e0f7bc3edb038d2eb6a9155af7af"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.55.3/bitrise-den-agent-linux-amd64.zip"
      sha256 "9a733b40ae6d30e3ed988bc858b01ee800fa3f35aedd7eaa1303b5fdbeeae345"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
