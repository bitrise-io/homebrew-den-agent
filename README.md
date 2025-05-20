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

Install latest or exact version:

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

Create a daemon from bitrise-den-agent:

This command sets up the Bitrise DEN agent as a daemon running under the current user.

It creates the necessary directories, installs or symlinks the agent binary, and configures the launchd plist to run the agent automatically.
- The `--bitrise-agent-intro-secret` is a required token used to authenticate the agent during connection.
- The optional `--fetch-latest-cli` flag makes sure the latest version of the Bitrise DEN agent is fetched and used.
- Running as sudo is required to load the daemon properly.

```zsh
sudo $(brew --prefix)/bin/create_bitrise_daemon.sh --bitrise-agent-intro-secret=YOUR_TOKEN --fetch-latest-cli
```

## DEV center
https://devcenter.bitrise.io/