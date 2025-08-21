cask "side-calendar" do
  version "0.2025.44_6"
  sha256 "2093c46fa67fc03c44dea7fe03ee18bcdbf231cbc33a952aa12941f396900ab4"

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