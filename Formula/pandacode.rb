class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.106/PandaCode-Linux-x86_64.AppImage"
  sha256 "fb839deb15d353d80f9bd76f45072c49fcff1d5e6462fea0720902cc083bd930"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.106/PandaCode-Linux-aarch64.AppImage"
      sha256 "305f96dfd6523fe97f2aa93367b04f2897153a33c2e48c9c6503686da2a01ff0"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
