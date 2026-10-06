# Oiekjr Tap

This tap provides the fwd-deck CLI and Fwd Deck app for macOS.

## How do I install these formulae?

`brew install oiekjr/tap/<formula>`

Or `brew tap oiekjr/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "oiekjr/tap"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## CI

CI checks formulae and casks on Linux, Apple Silicon macOS, and Intel macOS.
GitHub Actions workflow checks run on Linux to avoid installing the same workflow-checking tools in every job.
CI updates Homebrew/core before testing and prints definition-check output as it runs.
Each job has a 20-minute limit to stop stalled checks.
