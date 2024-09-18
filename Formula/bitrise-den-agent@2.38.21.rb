class BitriseDenAgentAT23821 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.21",
    revision: "97cc7c1faf62f79dc6f8ddc65c52d953eab605b5"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.21/bitrise-den-agent-darwin-arm64.zip"
      sha256 "4f35d787b037e0f72ed86cb957b9039553f6693c9590228cdd073507c518eef3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.21/bitrise-den-agent-darwin-amd64.zip"
      sha256 "be4d81f3f1a76bf53aed19476d0b021db2fb3a4d572b9963818037948042343a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.21/bitrise-den-agent-linux-amd64.zip"
      sha256 "c5099895a30ab83f51065cbc47805abbb9ce0ee6ed9b42c9afee3b39f9f79821"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
