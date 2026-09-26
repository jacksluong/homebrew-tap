cask "barnata" do
  version "0.4.0"
  sha256 "f0b548959e11734ce69b843a5539549f62dfa0c3dbafdc62af443bd0fb886f2a"

  url "https://github.com/jacksluong/barnata/releases/download/v#{version}/Barnata-#{version}.zip"
  name "Barnata"
  desc "Menu bar app that runs and controls kanata"
  homepage "https://github.com/jacksluong/barnata"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Barnata.app"

  uninstall quit: "com.jackyluong.barnata"

  zap trash: [
    "/Library/Logs/Barnata",
    "~/Library/Logs/Barnata",
    "~/.config/barnata",
  ]
end
