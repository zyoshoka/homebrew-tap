cask "instantspaceswitcher" do
  version :latest
  sha256 :no_check

  url "https://github.com/jurplel/InstantSpaceSwitcher/releases/download/nightly/InstantSpaceSwitcher-1.0.dmg"
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
