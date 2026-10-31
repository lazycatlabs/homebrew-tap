cask "copaste" do
  version "0.8.2"
  sha256 "9bdd63026b0857ee2ed38f554d9b206ae45468738ffc895c8994d82547808504"

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
