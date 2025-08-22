cask "side-calendar" do
  version "0.2025.45_01"
  sha256 "89c1cdc00b3558afdab971373d73ad6088b3c40d86ce7922521abd2e5ff25705"

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