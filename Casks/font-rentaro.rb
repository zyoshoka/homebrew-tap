cask "font-rentaro" do
  version "2004"
  sha256 :no_check

  url "https://ws.finalemusic.jp/data/FN2014MacDemo.dmg"
  name "Rentaro"

  livecheck do
    skip "Legacy version"
  end

  font "demo/JapaneseMusicFontsTT.pkg/Payload/Library/Fonts/Rentaro.suit"

  preflight do
    system_command "/usr/sbin/pkgutil",
                   args: ["--expand-full", staged_path/"Install Finale 2014d Demo.pkg", staged_path/"demo"]
  end

  # No zap stanza required
end
