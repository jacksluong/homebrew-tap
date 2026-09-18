cask "barnata" do
  version "0.2.1"
  sha256 "6ddf19f1c74097a93fb907a61651ed528099db7c5ccb72fd9987c6fd992944be"

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
