class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.103/PandaCode-Linux-x86_64.AppImage"
  sha256 "fcb6240f2c6454645150e80adb11cf72cdddf1ea26f3ffb924be669eeb8be8ed"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.103/PandaCode-Linux-aarch64.AppImage"
      sha256 "598c6df7f3b1aa430b0d596e74a9eba1380d68e79bb82583e14fbe4a136f92ef"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
