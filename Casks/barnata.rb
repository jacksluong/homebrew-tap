cask "barnata" do
  version "0.2.0"
  sha256 "0d49615ee6628422f02db2c29f7b22a5d006d80d49010fe9a6bb48a51568ad4f"

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
