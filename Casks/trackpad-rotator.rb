cask "trackpad-rotator" do
  version "1.2.0"
  sha256 "36620910fa30d23beb13da51dd556fcea37c016b80a299c1fdd5123537d3250e"

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
