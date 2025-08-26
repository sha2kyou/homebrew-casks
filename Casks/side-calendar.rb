cask "side-calendar" do
  version "0.2025.55_1"
  sha256 "07950e2d1c4bd879af7c83ec304a8f44de03ffdd1c2016e07de8eb1852abbc7f"

  url "https://github.com/sha2kyou/SideCalendar/releases/download/#{version}/SideCalendar.dmg"
  name "SideCalendarLite"
  desc "SideCalendar is a macOS menu bar app that unifies events and information from various sources (Calendar, Reminders, RSS, GitHub, etc.) into a dynamic screen edge information stream."
  homepage "https://github.com/sha2kyou/SideCalendar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma" # 14.0

  app "SideCalendar\ Lite.app"

  zap trash: [
    "~/Library/Preferences/cn.tr1ck.SideCalendarLite.plist",
    "~/Library/Containers/cn.tr1ck.SideCalendarLite"
  ]
end
