class BitriseDenAgentAT2347 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.34.7",
    revision: "c5f6816bbbf69f79ea0e8197452a7d43f906f279"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.7/bitrise-den-agent-darwin-arm64.zip"
      sha256 "46cf25d5c33feb78ad02d11f916b7ee738e31d85a6b7774fc42d66f9a42d59a5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.7/bitrise-den-agent-darwin-amd64.zip"
      sha256 "e0372ca8c10d7a37c921d167faaf739c830bab1e91cc4d1cb6e75deef8d99c81"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.34.7/bitrise-den-agent-linux-amd64.zip"
      sha256 "59e4e35569613ab1076929f810619ccaf5051541d52e8e0ec8a872e9d3024dcf"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
