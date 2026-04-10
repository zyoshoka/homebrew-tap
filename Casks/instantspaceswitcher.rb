cask "instantspaceswitcher" do
  version "1.0"
  sha256 "1d6ce054df0d5eea734d20afca81556818280e3f68d54e4f011ae4d69ae8aa9c"

  url "https://github.com/jurplel/InstantSpaceSwitcher/releases/download/v#{version}/InstantSpaceSwitcher-#{version}.dmg"
  name "InstantSpaceSwitcher"
  desc "Native space switching with no animation"
  homepage "https://github.com/jurplel/InstantSpaceSwitcher"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "InstantSpaceSwitcher.app"

  preflight do
    system "xattr", "-d", "com.apple.quarantine", "#{staged_path}/InstantSpaceSwitcher.app"
  end

  uninstall quit:       "com.interversehq.InstantSpaceSwitcher",
            login_item: "InstantSpaceSwitcher"

  zap trash: "~/Library/Preferences/com.interversehq.InstantSpaceSwitcher.plist"
end
