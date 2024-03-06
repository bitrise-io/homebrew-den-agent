class BitriseDenAgentAT2303 < Formula
    desc "CLI for Bitrise DEN agent"
    homepage "https://github.com/bitrise-io/bitrise-den-agent"
    url "https://github.com/bitrise-io/bitrise-den-agent.git",
        tag:      "v2.30.3",
        revision: "87415dc7c67eacaf58630161561d0d4d5b18176a"
    license ""
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.30.3/bitrise-den-agent-darwin-arm64.zip"
        sha256 "a37862f682c8944ae25dbf7ab93341cd573844067ddeb393bdbd6163cbb38423"
      end
      if Hardware::CPU.intel?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.30.3/bitrise-den-agent-darwin-amd64.zip"
        sha256 "7926628595200345c30d9cf1f260b0c517d65e9ada11f706d39f6e4a82481d6c"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.30.3/bitrise-den-agent-linux-amd64.zip"
        sha256 "5dd19f9b7402f52bd8b091e358245d1ad0db527af3a57a036239b6d4febefb97"
      end
    end
  
    def install
      bin.install "bitrise-den-agent"
    end
  
    test do
      system "#{bin}/bitrise-den-agent"
    end
  end
