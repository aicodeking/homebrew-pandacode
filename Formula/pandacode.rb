class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.28/PandaCode-Linux-x86_64.AppImage"
  sha256 "3964b336f7315622c655dc49855aa41645e8fdc6ac591bce242503bc5fa8361b"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.28/PandaCode-Linux-aarch64.AppImage"
      sha256 "771025efde7c2228f66b0b1913ce33b4eada13d33eb1d09871119c8d25fb93ba"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
