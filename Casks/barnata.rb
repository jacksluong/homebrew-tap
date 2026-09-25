cask "barnata" do
  version "0.3.2"
  sha256 "c1b08857012ef9f254f050fa88b82a78f167f6f0f16a11e6570878f4077fc7a4"

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
