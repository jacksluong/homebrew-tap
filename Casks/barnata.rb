cask "barnata" do
  # Scripts/release.sh in jacksluong/barnata rewrites these two lines
  version "0.1.0"
  sha256 "50ba28b1eadf3ac56dcd10e4d179440cdf8d4889f38d837d31571cac61f1dabd"

  url "https://github.com/jacksluong/barnata/releases/download/v#{version}/Barnata-#{version}.zip"
  name "Barnata"
  desc "Menu bar app that runs and controls kanata"
  homepage "https://github.com/jacksluong/barnata"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Barnata.app"

  uninstall launchctl: "io.jackyluong.barnata.daemon",
            quit:      "io.jackyluong.barnata"

  zap trash: [
    "/Library/Logs/Barnata",
    "~/.config/barnata",
  ]
end
