cask "pandacode" do
  arch arm: "arm64", intel: "x64"

  version "0.3.35"
  sha256 arm:   "48fff27d5ff58ce66f4d07ed2c0e3357f5d8b875bd555d294dd2ee6d7056c882",
         intel: "3e3dcca4b4b335a42a85dabef304719aff89dc9c397c100c5895375a990ce5fc"

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
