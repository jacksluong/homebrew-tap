cask "barnata" do
  version "0.3.3"
  sha256 "7f01c39f0805df8c52a8de7e5e32d979e23e18f47be690497aab165ca0b9d5d6"

  url "https://github.com/jacksluong/barnata/releases/download/v#{version}/Barnata-#{version}.zip"
  name "Barnata"
  desc "Menu bar app that runs and controls kanata"
  homepage "https://github.com/jacksluong/barnata"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Barnata.app"

  uninstall quit: "io.jackyluong.barnata"

  zap trash: [
    "/Library/Logs/Barnata",
    "~/Library/Logs/Barnata",
    "~/.config/barnata",
  ]
end
