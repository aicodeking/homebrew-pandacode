class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.35/PandaCode-Linux-x86_64.AppImage"
  sha256 "bb79542cdd5270b25a6422952fa966bda6228130f56c214a85b014daede291e5"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.35/PandaCode-Linux-aarch64.AppImage"
      sha256 "fac57e0dd6e1f87f4df168e615e573951e7f33fe0c2499e8d3494855a3f0f7cd"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
