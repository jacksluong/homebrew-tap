cask "barnata" do
  version "0.4.1"
  sha256 "5f6a91afb3dbf4136f7be5967c3e26f1ec34ca7a9a54e93f0a12e85b8dc1af4a"

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
