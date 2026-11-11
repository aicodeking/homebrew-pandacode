class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.111/PandaCode-Linux-x86_64.AppImage"
  sha256 "ca1b1aa267717b88670d8804ed5c11c4aed007efb723e47454c2df08ef5b70be"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.111/PandaCode-Linux-aarch64.AppImage"
      sha256 "0baa7f21271c3b9f68736782d3847e68d4ed6cd2fde1aee420fb7dadc76f7463"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
