cask "sidecalendar" do
  version "0.3.30"
  sha256 "aa0c0de61b0b9c4ad74d22c14d304f30334d0a5c4b31f7155613e08fe85ebe69"

  url "https://github.com/sha2kyou/SideCalendar/releases/download/#{version}/SideCalendar.dmg"
  name "SideCalendar"
  desc "A timeline app that displays calendar events and information flow on the edge of your screen."
  homepage "https://github.com/sha2kyou/SideCalendar"

  livecheck do
    url :github_latest
  end

  app "SideCalendar.app"

  zap trash: [
    "~/Library/Preferences/com.sha2kyou.SideCalendar.plist",
    "~/Library/Application Support/SideCalendar",
  ]
end