cask "barnata" do
  version "0.3.1"
  sha256 "1008b27318ce69f23c87ac95f4b4301d22f6327cb371bb9cca5d3b858a6b146d"

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
