cask "font-makemusic" do
  version :latest
  sha256 :no_check

  url "https://makemusic.zendesk.com/hc/en-us/article_attachments/4634529007639"
  name "MakeMusic Fonts"
  homepage "https://makemusic.zendesk.com/hc/en-us/articles/1500013053461"

  pkg "MakeMusicFontsTT.pkg"

  uninstall pkgutil: "com.makemusic.pkg.fontsTTSMuFL"

  zap trash: [
        "/Library/Application Support/SMuFL/Fonts/Finale Ash Text",
        "/Library/Application Support/SMuFL/Fonts/Finale Ash",
        "/Library/Application Support/SMuFL/Fonts/Finale Broadway Legacy Text",
        "/Library/Application Support/SMuFL/Fonts/Finale Broadway Text",
        "/Library/Application Support/SMuFL/Fonts/Finale Broadway",
        "/Library/Application Support/SMuFL/Fonts/Finale Engraver",
        "/Library/Application Support/SMuFL/Fonts/Finale Jazz Text Lowercase",
        "/Library/Application Support/SMuFL/Fonts/Finale Jazz Text",
        "/Library/Application Support/SMuFL/Fonts/Finale Jazz",
        "/Library/Application Support/SMuFL/Fonts/Finale Legacy",
        "/Library/Application Support/SMuFL/Fonts/Finale Maestro Text Bold Italic",
        "/Library/Application Support/SMuFL/Fonts/Finale Maestro Text Bold",
        "/Library/Application Support/SMuFL/Fonts/Finale Maestro Text Italic",
        "/Library/Application Support/SMuFL/Fonts/Finale Maestro Text",
        "/Library/Application Support/SMuFL/Fonts/Finale Maestro",
      ],
      rmdir: [
        "/Library/Application Support/SMuFL",
        "/Library/Application Support/SMuFL/Fonts",
      ]
end
