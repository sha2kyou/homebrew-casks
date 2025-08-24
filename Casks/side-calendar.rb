cask "side-calendar" do
  version "0.2025.53"
  sha256 "97d18cf1e3f7ee05ab9d9ffb196c9b67fa481e4de8908a15100dc54b6ec5ae7d"

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
    "~/Library/Preferences/cn.tr1ck.SideCalendar.plist",
    "~/Library/Containers/cn.tr1ck.SideCalendar"
  ]
end
