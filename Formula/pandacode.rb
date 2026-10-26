class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.50/PandaCode-Linux-x86_64.AppImage"
  sha256 "46cd392d0d90a090858c089c7ab33ee975309f843d3d879de74225f68daa794f"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.50/PandaCode-Linux-aarch64.AppImage"
      sha256 "fa01d6296dc7fa1ff0e0d222c42591701f74e447acab986757b3d6e712d0d74a"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
