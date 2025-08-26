cask "side-calendar" do
  version "0.2025.55_5"
  sha256 "83ab14d69db77e24c770c7a9a43879d6362318447350a278f9af2dbbcf3ec87f"

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
