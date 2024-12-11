<h1 align="center">brew tap bitrise-io/den-agent</h1>
<p align="center">
    self-hosted Bitrise runner
</p>

## OS Support

|Operating System|Architecture|
|--- |--- |
|Linux|`x86_64`|
|macOS Big Sur|`x86_64`, `arm64`|
|macOS Monterey|`x86_64`, `arm64`|
|macOS Ventura|`x86_64`, `arm64`|

## How to use

Fetch the formulae in this tap:

```zsh
brew tap bitrise-io/den-agent
```

Install latest or exact version

```zsh
# latest
brew install bitrise-den-agent

# exact version
brew install bitrise-den-agent@2.1.26
```

Link version (if needed):
```zsh
brew link --overwrite bitrise-den-agent@2.1.26
```

Upgrade version:
```zsh
brew upgrade bitrise-den-agent@2.1.26
```

# Create Daemon

This tool allows you to create a daemon using Homebrew.

## Usage

To create a daemon, use the following command:

```zsh
brew create-daemon --bitrise-agent-intro-secret=YOUR_TOKEN [--log-file-path=/path/to/logfile.log]
```

## Parameters

- `--bitrise-agent-intro-secret=YOUR_TOKEN`: **(Required)**  
  The secret token for Bitrise agent introduction. Replace `YOUR_TOKEN` with your actual token.

- `--log-file-path=/path/to/logfile.log`: **(Optional)**  
  Specifies the path to the log file where the daemon will write logs. If not provided, logging to a file will not occur.

## DEV center
https://devcenter.bitrise.io/