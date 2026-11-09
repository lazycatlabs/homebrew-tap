cask "recopy" do
  version "0.12.0"
  sha256 "2c267a3a84daf6e9752246cd3f6792947172315c842bfa898620aec626cacb72"

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
    To paste straight into other apps it needs Accessibility permission,
    which it asks for the first time you paste.
  EOS
end
