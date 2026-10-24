class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.37/PandaCode-Linux-x86_64.AppImage"
  sha256 "c501c0a4866687f2982668645d4a49b0d535467141d32df9661eba5b3ef28471"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.37/PandaCode-Linux-aarch64.AppImage"
      sha256 "99f7d9e5848276413251db4989dee6da82185466a4fe4d97df6bfbf975b4c17c"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
