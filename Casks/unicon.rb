cask "unicon" do
  version "0.3.1"
  sha256 "ccc1c582512a1fff03cc017fd8b39042663efecaaf83b312f567998b43580694"

  url "https://github.com/otofune/unicon/releases/download/v#{version}/unicon_v#{version}.dmg"
  name "unicon"
  desc "Shows CPU architecture of running application in status menu"
  homepage "https://github.com/otofune/unicon"

  depends_on macos: ">= :big_sur"

  app "unicon.app"

  uninstall quit: "net.otofune.apps.unicon"

  zap trash: [
    "~/Library/Application Scripts/net.otofune.apps.unicon",
    "~/Library/Containers/net.otofune.apps.unicon",
  ]
end
