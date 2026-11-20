cask "pandacode" do
  arch arm: "arm64", intel: "x64"

  version "0.3.134"
  sha256 arm:   "4e04b1756b14eab6c3ba090a9c4f7420fa8f7a4cead3a17df0ec7b3816643d99",
         intel: "f9286f903277cb27dfbea99f7c47aa63a47abcd96d4d2990c5468754db695aa2"

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
