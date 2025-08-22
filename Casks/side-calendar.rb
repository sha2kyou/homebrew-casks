cask "side-calendar" do
  version "0.2025.46_1"
  sha256 "ba90986dce695350366ee19586bbe44de5feaef8bd2a317e194201917a9aa9d7"

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