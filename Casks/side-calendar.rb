cask "side-calendar" do
  version "0.3.31"
  sha256 "e3cc6ddba68b61c25946506967b22e4a73bb38c43b2a98d7ff1618fae6bc3ee2"

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