cask "side-calendar" do
  version "0.2025.40"
  sha256 "0a9a3cda68001b1a136ff9efdc4657f34393ad5b968adc7170dd53f2beee60c6"

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