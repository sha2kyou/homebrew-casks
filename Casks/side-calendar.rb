cask "side-calendar" do
  version "0.2025.52_5"
  sha256 "51ad9414d57e998d1e6f70687d7254c668d6a2ec878e6d26528c10f0baeffb1b"

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
