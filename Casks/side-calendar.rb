cask "side-calendar" do
  version "0.2025.52_6"
  sha256 "585d525f24ead7fc77bc6b257f904092de4ea7b2bff426d2e004e956449862c0"

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
