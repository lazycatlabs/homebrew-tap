cask "copaste" do
  version "0.8.0"
  sha256 "0d1219cb8fe52587369ee6d1e0cbaf531a0879215e68ba2fd0ae415f2c676ebd"

  url "https://github.com/lazycatlabs/copaste/releases/download/v#{version}/Copaste-#{version}.zip"
  name "Copaste"
  desc "Clipboard history for text, links, colours, images and files"
  homepage "https://github.com/lazycatlabs/copaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Copaste.app"

  uninstall quit: "com.lazycatlabs.copaste"

  zap trash: "~/Library/Preferences/com.lazycatlabs.copaste.plist"

  caveats <<~EOS
    Copaste is not notarized yet, so macOS blocks the first launch.
    Open it once, then go to System Settings → Privacy & Security and click
    "Open Anyway".

    To paste straight into other apps it needs Accessibility permission,
    which it asks for the first time you paste.
  EOS
end
