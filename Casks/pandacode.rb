cask "pandacode" do
  arch arm: "arm64", intel: "x64"

  version "0.3.111"
  sha256 arm:   "32f6ae5280b8da57b06ea44e622203878dfbdf1f729369c7465d29b014d9e852",
         intel: "cefb38222dcf69b27b5cad2fcfe991e0c83ff189d9c93f72033023486fe2afe3"

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
