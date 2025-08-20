cask "side-calendar" do
  version "0.3.35"
  sha256 "394bb7f1cb22871cf5c4a740c819150eb6a77e13f2928b88a8b62d8b6c0c4854"

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