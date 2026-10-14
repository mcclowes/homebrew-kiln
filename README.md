# Kiln Homebrew tap

This public repository hosts the Homebrew cask and
[release downloads](https://github.com/mcclowes/homebrew-kiln/releases) for Kiln,
a native macOS IDE.

## Install

```sh
brew install --cask mcclowes/kiln/kiln
```

The full cask name grants trust to this cask during installation. See
[Homebrew's tap trust guide](https://docs.brew.sh/Tap-Trust).

Open Kiln from Applications.

## Upgrade

```sh
brew upgrade --cask mcclowes/kiln/kiln
```

## Requirements

The current published build requires an Apple Silicon Mac running
macOS 26 (Tahoe) or later.

## Manual installation

Download `Kiln-<version>.zip` from the
[latest release](https://github.com/mcclowes/homebrew-kiln/releases/latest),
extract it, and move `Kiln.app` to Applications.

## Checks

GitHub Actions checks every push and pull request with stable Homebrew on macOS
26. It checks cask style, runs the strict cask audit, and fetches the release
archive to verify its checksum. The job checks the current tap checkout and
doesn't install or launch Kiln.
