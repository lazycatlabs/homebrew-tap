cask "recopy" do
  version "0.13.0"
  sha256 "93f403a4629a39a23df420e208e0ae3d67cc74c797a4ea520560a532492dd162"

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
