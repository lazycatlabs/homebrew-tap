# Lazycat Labs Homebrew Tap

```bash
brew install --cask lazycatlabs/tap/trackpad-rotator
```

```bash
brew install --cask lazycatlabs/tap/copaste
```

| Cask | App |
| --- | --- |
| `trackpad-rotator` | [Trackpad Rotator](https://github.com/lazycatlabs/trackpad_rotator): use a Magic Trackpad turned 90°, 180° or 270° |
| `copaste` | [Copaste](https://github.com/lazycatlabs/copaste): clipboard history for text, links, colours, images and files |

## Updating a cask

After publishing a new release, update `version` and `sha256`:

```bash
shasum -a 256 <App>-<version>.zip
```

Then check it:

```bash
brew style Casks/<cask>.rb
```

```bash
brew audit --cask --online lazycatlabs/tap/<cask>
```
