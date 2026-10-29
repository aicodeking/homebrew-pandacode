cask "pandacode" do
  arch arm: "arm64", intel: "x64"

  version "0.3.76"
  sha256 arm:   "0e4ef7e586f3d7251054e1bd9987eebf2d9f8b6ffb8cc18335094cf2f6295ca8",
         intel: "5b4bdec8fc330bb1346d56f07884c00600eeccf93d05f5353786d90cb409a622"

  url "https://github.com/aicodeking/pandacode/releases/download/v#{version}/PandaCode-macOS-#{arch}.dmg"
  name "PandaCode"
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "PandaCode.app"

  zap trash: [
    "~/Library/Application Support/ai.pandacode.desktop",
    "~/Library/Caches/ai.pandacode.desktop",
    "~/Library/Caches/pandacode",
    "~/Library/HTTPStorages/ai.pandacode.desktop",
    "~/Library/Preferences/ai.pandacode.desktop.plist",
    "~/Library/Saved Application State/ai.pandacode.desktop.savedState",
    "~/Library/WebKit/ai.pandacode.desktop",
    "~/Library/WebKit/pandacode",
  ]
end
