cask "copaste" do
  version "0.2.1"
  sha256 "e0f50c703743476339fa87971e80f424e02335d60e4f9109cc066c4ce4cf7964"

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
