cask "side-calendar" do
  version "0.2025.55"
  sha256 "87169acbde7d59d611eb0bca5dcd3e312126eb6a477b6e80b16cb694a300d42f"

  url "https://github.com/sha2kyou/SideCalendar/releases/download/#{version}/SideCalendar Lite.dmg"
  name "SideCalendarLite"
  desc "SideCalendar is a macOS menu bar app that unifies events and information from various sources (Calendar, Reminders, RSS, GitHub, etc.) into a dynamic screen edge information stream."
  homepage "https://github.com/sha2kyou/SideCalendar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma" # 14.0

  app "SideCalendar.app"

  zap trash: [
    "~/Library/Preferences/cn.tr1ck.SideCalendarLite.plist",
    "~/Library/Containers/cn.tr1ck.SideCalendarLite"
  ]
end
