cask "basemapviewer" do
  version "5.1.3"
  sha256 "983f5b046bcb95f37c6976c4ee9bb1f140e8384c0654a814a5b31b3ed6b5c292"

  url "https://jizoh.jp/program/BMVr_#{version.no_dots}.zip"
  name "基盤地図ビューア"
  desc "Viewer for base map information from the GSI in Japan"
  homepage "https://jizoh.jp/pages/BMVr.html"

  livecheck do
    url "https://jizoh.jp/pages/download.html"
    regex(/基盤地図ビューアV?\d+\s*(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :sierra"

  app "基盤地図ビューア#{version}/基盤地図ビューア V#{version.major}.app"

  uninstall quit: "jp.jizoh.BaseMap#{version.major}"

  zap trash: [
    "~/Library/Application Scripts/jp.jizoh.BaseMap#{version.major}",
    "~/Library/Containers/jp.jizoh.BaseMap#{version.major}",
  ]
end
