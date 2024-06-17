class BitriseDenAgentAT2371 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.37.1",
    revision: "ff03796b9252f350596b4c2084b376f9453682df"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.1/bitrise-den-agent-darwin-arm64.zip"
      sha256 "b09f07fee73dd9a54e0fe41d1007ac128b2acc2b2bc7de6486c7e770bc6f812e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.1/bitrise-den-agent-darwin-amd64.zip"
      sha256 "41ad6e048d830a23b891f9511f783d63e3204658c0fa258f338ac88410b09797"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.37.1/bitrise-den-agent-linux-amd64.zip"
      sha256 "dc998dbea759e78dfbc5a71c2e52d40fc9442f2f88fc039dfb5cbbb8aa02f9a4"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
