cask "side-calendar" do
  version "0.3.34"
  sha256 "7226f8f8bbf2e2066ea1496aede8211310fa1aa7e76c0918e1a07f359ccc3f48"

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