cask "airbuddy@2.8.1" do
  version "2.8.1,660"
  sha256 "61e3b5ce63d1345e3a126b91a75e3627d491bd6cc7ada5abd7e56eaad849cec4"

  url "https://su.airbuddy.app/kCRSAmcjBc/AirBuddy_v#{version.csv.first}-#{version.csv.second}.dmg",
      user_agent: :browser
  name "AirBuddy"
  desc "AirPods companion app (locked to 2.8.1)"
  homepage "https://airbuddy.app/"

  conflicts_with cask: "airbuddy"
  depends_on macos: :sonoma

  app "AirBuddy.app"

  zap trash: [
    "~/Library/Application Support/AirBuddy",
    "~/Library/Caches/codes.rambo.AirBuddy",
    "~/Library/Containers/codes.rambo.AirBuddy*",
    "~/Library/LaunchAgents/codes.rambo.AirBuddyHelper.plist",
    "~/Library/Preferences/codes.rambo.AirBuddy.plist",
  ]
end
