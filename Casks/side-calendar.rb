cask "side-calendar" do
  version "0.2025.50_1"
  sha256 "b5dd58ba26883612eb35294c3ae0f48862d9b4a521de882bbad2dc8b94f91cf3"

  url "https://github.com/sha2kyou/SideCalendar/releases/download/#{version}/SideCalendar.dmg"
  name "SideCalendar"
  desc "A timeline app that displays calendar events and information flow on the edge of your screen."
  homepage "https://github.com/sha2kyou/SideCalendar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma" # 14.0

  app "SideCalendar.app"

  zap trash: [
    "~/Library/Containers/cn.tr1ck.SideCalendar",
    "~/Library/Preferences/cn.tr1ck.SideCalendar.plist"
  ]
end