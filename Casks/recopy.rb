cask "recopy" do
  version "0.10.0"
  sha256 "db1cb824ff2d47d5f39729ef05efcd2c5251a83cf1f58f2addb73a78854e1e72"

  url "https://github.com/lazycatlabs/recopy/releases/download/v#{version}/ReCopy-#{version}.zip"
  name "ReCopy"
  desc "Clipboard history for text, links, colours, images and files"
  homepage "https://github.com/lazycatlabs/recopy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "ReCopy.app"

  uninstall quit: "com.lazycatlabs.recopy"

  zap trash: "~/Library/Preferences/com.lazycatlabs.recopy.plist"

  caveats <<~EOS
    ReCopy is not notarized yet, so macOS blocks the first launch.
    Open it once, then go to System Settings → Privacy & Security and click
    "Open Anyway".

    To paste straight into other apps it needs Accessibility permission,
    which it asks for the first time you paste.
  EOS
end
