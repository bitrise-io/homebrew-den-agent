class BitriseDenAgentAT2320 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.32.0",
    revision: "448c10f81f7bd3c8ab20ddb2c7b4f4efa1921d43"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.32.0/bitrise-den-agent-darwin-arm64.zip"
      sha256 "7b5a127c388e2dcf32c8d6789283abe25983dc238f16156bb900c435bd88065f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.32.0/bitrise-den-agent-darwin-amd64.zip"
      sha256 "7eff0e27af6565230286d48d4ae2a2586e70a3f8d20bda89df0721fbca4bb889"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.32.0/bitrise-den-agent-linux-amd64.zip"
      sha256 "f2580f78f70539e434922418cb2262094c03d181cbedd329a01e80462c721f7f"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
