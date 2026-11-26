class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.150/PandaCode-Linux-x86_64.AppImage"
  sha256 "70327c6be325bf2358be94e616e2c6a4ce79de3ac102e6f7c32b77c762f438b6"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.150/PandaCode-Linux-aarch64.AppImage"
      sha256 "802bb28ba185976397314217e5b3dea9b5ad262881afea392504e1f01a4b2a91"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
