cask "barnata" do
  version "0.5.0"
  sha256 "cd4221c461575117d00b042059a38bbb041ac4c207cdda5207af705e0768fb30"

  url "https://github.com/jacksluong/barnata/releases/download/v#{version}/Barnata-#{version}.dmg"
  name "Barnata"
  desc "Menu bar app that runs and controls kanata"
  homepage "https://github.com/jacksluong/barnata"

  deprecate! date: "2026-10-12", because: "is now distributed as a direct download from https://github.com/jacksluong/barnata/releases"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Barnata.app"

  uninstall quit: "com.jackyluong.barnata"

  zap trash: [
    "/Library/Logs/Barnata",
    "~/.config/barnata",
    "~/Library/Logs/Barnata",
  ]
end
