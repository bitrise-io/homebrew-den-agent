# frozen_string_literal: true

require 'etc'
require 'fileutils'

module Homebrew
  module Cmd
    class CreateDaemon < AbstractCommand
      cmd_args do
        description <<~EOS
          This tool generates a .plist file for the DEN agent, which is essential for the Bitrise DEN agent to function as a daemon.
        EOS
        flag "--bitrise-agent-intro-secret=",
             description: "Bitrise DEN agent intro token."
        flag "--log-file-path=",
             description: "Optional file path for storing log output. If set, logs will be stored in the specified file."
      end

      def run
        bitrise_agent_user_name = ENV["USER"]
        bitrise_agent_group_name = Etc.getgrgid(Process.gid).name
        bitrise_agent_intro_secret = args.bitrise_agent_intro_secret
        log_file_path = args.log_file_path

        # Construct the command with optional log file path
        command = "/opt/homebrew/bin/bitrise-den-agent connect --intro-secret #{bitrise_agent_intro_secret} --server https://exec.bitrise.io"
        command += " --log-file-path #{log_file_path}" unless log_file_path.to_s.empty?

        plist_content = <<~EOS
          <?xml version="1.0" encoding="UTF-8"?>
          <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
          <plist version="1.0">
            <dict>
              <key>Label</key>
              <string>io.bitrise.self-hosted-agent</string>

              <key>EnvironmentVariables</key>
              <dict>
                <key>PATH</key>
                <string>/usr/local/bin:/usr/bin/:/bin/:/opt/homebrew/bin</string>
              </dict>

              <key>ProgramArguments</key>
              <array>
                <string>/bin/bash</string>
                <string>-lc</string>
                <string>#{command}</string>
              </array>

              <key>KeepAlive</key>
              <true/>

              <key>RunAtLoad</key>
              <true/>

              <key>SessionCreate</key>
              <true/>

              <key>UserName</key>
              <string>#{bitrise_agent_user_name}</string>
              <key>GroupName</key>
              <string>#{bitrise_agent_group_name}</string>
            </dict>
          </plist>
        EOS

        plist_target_path = "/Users/#{bitrise_agent_user_name}/Library/LaunchDaemons"
        plist_template_file = "/opt/homebrew/io.bitrise.self-hosted-agent.plist"
        FileUtils.mkdir_p(File.dirname(plist_template_file))
        File.write(plist_template_file, plist_content)
        puts <<~EOS
          Plist template file is located in the following directory:

            #{Tty.bold}#{plist_template_file}#{Tty.reset}

          For the daemon setup please run the following commands:

            #{Tty.bold}sudo mkdir -p #{plist_target_path}
            sudo chown root:wheel #{plist_target_path}
            sudo cp #{plist_template_file} #{plist_target_path}
            sudo chown root:wheel #{plist_target_path}/io.bitrise.self-hosted-agent.plist
            sudo launchctl load -w #{plist_target_path}/io.bitrise.self-hosted-agent.plist#{Tty.reset}
        EOS
      end
    end
  end
end