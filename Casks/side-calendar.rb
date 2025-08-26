cask "side-calendar" do
  version "0.2025.55_3"
  sha256 "2de7a77433a81fa57f27fa9cb3cd10ffe27fedd953989229cd6ff5f9e29b12e0"

  url "https://github.com/sha2kyou/SideCalendar/releases/download/#{version}/SideCalendar.dmg"
  name "SideCalendarLite"
  desc "SideCalendar is a macOS menu bar app that unifies events and information from various sources (Calendar, Reminders, RSS, GitHub, etc.) into a dynamic screen edge information stream."
  homepage "https://github.com/sha2kyou/SideCalendar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma" # 14.0

  app "SideCalendar Lite.app"

  zap trash: [
    "~/Library/Preferences/cn.tr1ck.SideCalendarLite.plist",
    "~/Library/Containers/cn.tr1ck.SideCalendarLite"
  ]
end
