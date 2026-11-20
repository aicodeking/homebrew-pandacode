class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.135/PandaCode-Linux-x86_64.AppImage"
  sha256 "957e9f13c6a97fe352ce503d863c0f7a5f4b5fbe3b7c52a35f8e3544a3fba197"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.135/PandaCode-Linux-aarch64.AppImage"
      sha256 "8abc698c992701c58c4298c18a759f181ef4e24cb4f3d092ce2d4487d3bf9a4a"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
