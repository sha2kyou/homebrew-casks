cask "side-calendar" do
  version "0.2025.53_1"
  sha256 "c2741cce4ea2f4502a5aea2822e31f4c298249e1ee876379780165e502610764"

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
