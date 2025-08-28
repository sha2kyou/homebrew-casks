cask "side-calendar" do
  version "2025.0.2_2"
  sha256 "082dba62b987506fb74f7f1337253f3c89e0c347cd13432f9510c0757e427c92"

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
