cask "pandacode" do
  arch arm: "arm64", intel: "x64"

  version "0.3.161"
  sha256 arm:   "93a0d493536892d57f919bdd3948d9b0a54141c059951dcc271524d4655ab34c",
         intel: "67e7e7435d9ea858ab6ebb80bfdd66796f490aa82db3a00019c90e58c7ccab86"

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
