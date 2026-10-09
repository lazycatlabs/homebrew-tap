# Lazycat Labs Homebrew Tap

```bash
brew install --cask lazycatlabs/tap/trackpad-rotator
```

| Cask | App |
| --- | --- |
| `trackpad-rotator` | [Trackpad Rotator](https://github.com/lazycatlabs/trackpad_rotator): use a Magic Trackpad turned 90°, 180° or 270° |

## Updating a cask

After publishing a new release, update `version` and `sha256`:

```bash
shasum -a 256 TrackpadRotator-<version>.zip
```

Then check it:

```bash
brew style Casks/trackpad-rotator.rb
```

```bash
brew audit --cask --online lazycatlabs/tap/trackpad-rotator
```
