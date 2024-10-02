class BitriseDenAgentAT23829 < Formula
  desc "CLI for Bitrise DEN agent"
  homepage "https://github.com/bitrise-io/bitrise-den-agent"
  url "https://github.com/bitrise-io/bitrise-den-agent.git",
    tag:      "v2.38.29",
    revision: "99ddda462ccf3f2244a3a7e478ef56c04a5ed15e"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.29/bitrise-den-agent-darwin-arm64.zip"
      sha256 "265eee673096afb7912ccfd44d5b828be3422afddba49d0f95320af35ab65019"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.29/bitrise-den-agent-darwin-amd64.zip"
      sha256 "b4c3c440f8e78c9b30ed5b12d3544ebd14eddb1beeab722e760c88bddfdbb267"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.38.29/bitrise-den-agent-linux-amd64.zip"
      sha256 "046ae66b3f02654527baac26d99fbc8b9dfd8ecab89cab5026987278a11b4799"
    end
  end

  def install
    bin.install "bitrise-den-agent"
  end

  test do
    system "#{bin}/bitrise-den-agent"
  end
end
