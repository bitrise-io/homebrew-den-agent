class BitriseDenAgent < Formula
    desc "CLI for Bitrise DEN agent"
    homepage "https://github.com/bitrise-io/bitrise-den-agent"
    url "https://github.com/bitrise-io/bitrise-den-agent.git",
        tag:      "v2.28.2",
        revision: "b0379a6dd4f2e036d044af8fe6b9472bf7190ae3"
    license ""
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.28.2/bitrise-den-agent-darwin-arm64.zip"
        sha256 "c1e6fcb485da05aede452c171c680de427cbadc6cd35a1afaacb6ba37d0ed207"
      end
      if Hardware::CPU.intel?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.28.2/bitrise-den-agent-darwin-amd64.zip"
        sha256 "bb3c68a9ee5271ced2960d4e7bb67300acc5222fb47ede4ad5406edc6dff24ef"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.28.2/bitrise-den-agent-linux-amd64.zip"
        sha256 "f5b9acea7c15613954fb4e99540da5e0ce7430f48f511fac245f8e02279622d7"
      end
    end
  
    def install
      bin.install "bitrise-den-agent"
    end
  
    test do
      system "#{bin}/bitrise-den-agent"
    end
  end
