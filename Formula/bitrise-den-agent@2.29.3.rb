class BitriseDenAgentAT2293 < Formula
    desc "CLI for Bitrise DEN agent"
    homepage "https://github.com/bitrise-io/bitrise-den-agent"
    url "https://github.com/bitrise-io/bitrise-den-agent.git",
        tag:      "v2.29.3",
        revision: "27440f1768caa1e9f018fa5d3b9a7fda37343aa0"
    license ""
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.29.3/bitrise-den-agent-darwin-arm64.zip"
        sha256 "79386642392366a564e272ca56b04e738cc87de5c87225744a787d3e3fff38b8"
      end
      if Hardware::CPU.intel?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.29.3/bitrise-den-agent-darwin-amd64.zip"
        sha256 "996144b5a0f62ff5ddb2820a6244c1c7d858d06ac0b8ea6ff8aece9765e81e19"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/bitrise-io/bitrise-den-agent/releases/download/v2.29.3/bitrise-den-agent-linux-amd64.zip"
        sha256 "266bc2491c720aa6f71e01619963da8d8709567412d51e23ddf72d0371863214"
      end
    end
  
    def install
      bin.install "bitrise-den-agent"
    end
  
    test do
      system "#{bin}/bitrise-den-agent"
    end
  end
