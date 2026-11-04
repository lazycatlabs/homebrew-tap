cask "recopy" do
  version "0.11.1"
  sha256 "92d2553063e1a0248bb18959e35cc424c2280d18bcc9ebd799664248a08e173e"

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
