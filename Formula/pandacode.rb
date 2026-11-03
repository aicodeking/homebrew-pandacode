class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.92/PandaCode-Linux-x86_64.AppImage"
  sha256 "18b813573fa26f78c0d3554077bf0e36eab03e10c6b271d6568cd2518455b0d6"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.92/PandaCode-Linux-aarch64.AppImage"
      sha256 "c1c3e4c39379a9370921e75b1c7a0d6667aeb5b7903374d5d5f0caab5c747510"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
