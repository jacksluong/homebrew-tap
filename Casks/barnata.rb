cask "barnata" do
  # Scripts/release.sh in jacksluong/barnata rewrites these two lines
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/jacksluong/barnata/releases/download/v#{version}/Barnata-#{version}.zip"
  name "Barnata"
  desc "Menu bar app that runs and controls kanata"
  homepage "https://github.com/jacksluong/barnata"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Barnata.app"

  uninstall launchctl: "io.jackyluong.barnata.daemon",
            quit:      "io.jackyluong.barnata"

  zap trash: [
    "~/.config/barnata",
    "/Library/Logs/Barnata",
  ]
end
