class BitriseDenAgentAT2314 &lt; Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.31.4",
    revision: "7d567785f06d6d94383e3bdc4e5c56574ae3dac9"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.31.4/bitrise-den-agent-darwin-arm64.zip"
      sha256 "98ef41baa811e60344cc80a03855a8796b273e73a0b8baf518ca71d9b17aac34"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.31.4/bitrise-den-agent-darwin-amd64.zip"
      sha256 "ed65f67d2a990aca55ac9f08a2cc8c5f8232705fb5cb9babd91dfee3d0bf016e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.31.4/bitrise-den-agent-linux-amd64.zip"
      sha256 "39c0505090e58c4766ebffccf8b7fdc8d6c6ee7710070cf6b3f63f0fd2bbe729"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
