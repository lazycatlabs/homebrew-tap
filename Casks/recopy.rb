cask "recopy" do
  version "0.11.2"
  sha256 "171669b6768aabe68455fbeb12479ff1a27d02a9da7706dd143ff5290f76e631"

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
