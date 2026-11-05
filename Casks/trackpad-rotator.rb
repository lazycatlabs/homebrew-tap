cask "trackpad-rotator" do
  version "1.4.0"
  sha256 "2c2da8764f50a040a61c476ba4af3f233e95851667ad4a91430e85f35ad77b00"

  url "https://github.com/lazycatlabs/trackpad_rotator/releases/download/v#{version}/TrackpadRotator-#{version}.zip"
  name "Trackpad Rotator"
  desc "Remap pointer, scrolling and swipes for a rotated Magic Trackpad"
  homepage "https://github.com/lazycatlabs/trackpad_rotator"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Trackpad Rotator.app"

  uninstall quit: "com.lazycatlabs.trackpadrotator"

  zap trash: [
    "~/Library/Preferences/com.lazycatlabs.trackpadrotator.plist",
    "~/Library/Preferences/lazycatlabs.trackpadrotator.plist",
    "~/Library/Preferences/local.trackpadrotator.plist",
  ]

  caveats <<~EOS
    Trackpad Rotator needs Accessibility and Input Monitoring permission,
    which it asks for on first launch.

    Upgrading from 1.3.0 or earlier: the bundle identifier changed, so grant
    both permissions again and remove the old Trackpad Rotator entries in
    System Settings → Privacy & Security. Your settings carry over.
  EOS
end
