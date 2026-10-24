cask "trackpad-rotator" do
  version "1.1.1"
  sha256 "bea28b499af3e53262472162c737482c5f5021ec827ccf3108ba5aeb88c6f916"

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

  uninstall quit: "lazycatlabs.trackpadrotator"

  zap trash: [
    "~/Library/Preferences/lazycatlabs.trackpadrotator.plist",
    "~/Library/Preferences/local.trackpadrotator.plist",
  ]

  caveats <<~EOS
    Trackpad Rotator is not notarized yet, so macOS blocks the first launch.
    Open it once, then go to System Settings → Privacy & Security and click
    "Open Anyway".

    It also needs Accessibility and Input Monitoring permission, which it
    asks for on first launch.
  EOS
end
