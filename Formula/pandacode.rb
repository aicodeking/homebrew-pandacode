class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.137/PandaCode-Linux-x86_64.AppImage"
  sha256 "d654e011151eb31fdc7d0ee17030f5b561266befec4fb8875e927962019d0442"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.137/PandaCode-Linux-aarch64.AppImage"
      sha256 "574e7b2af93daf0d359044b94fab83528bb82fb0f506bf412bd930bd5e0e3212"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
