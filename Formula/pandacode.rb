class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.133/PandaCode-Linux-x86_64.AppImage"
  sha256 "24a0e8b06c1f2c2b09ad93b2ee195786b64f7923ad23969d0a318b52439e76b1"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.133/PandaCode-Linux-aarch64.AppImage"
      sha256 "3bc0e7aba99d04111a1dd04ead593fe5cbc5a444c1ea6e9cb3077296b229b146"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
