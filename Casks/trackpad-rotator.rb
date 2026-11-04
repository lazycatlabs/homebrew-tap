cask "trackpad-rotator" do
  version "1.3.0"
  sha256 "f5ae61efff447f8993baf09349d5129e7d912a9909e28619f322a33a6c48b700"

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
