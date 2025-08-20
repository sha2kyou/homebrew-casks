cask "side-calendar" do
  version "0.3.32"
  sha256 "a09528c52e63c8407600f50ee0eacfcb718609b742e098a58e65933a7216d80f"

  url "https://github.com/sha2kyou/SideCalendar/releases/download/#{version}/SideCalendar.dmg"
  name "SideCalendar"
  desc "A timeline app that displays calendar events and information flow on the edge of your screen."
  homepage "https://github.com/sha2kyou/SideCalendar"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SideCalendar.app"

  zap trash: [
  ]
end