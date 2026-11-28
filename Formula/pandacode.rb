class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.164/PandaCode-Linux-x86_64.AppImage"
  sha256 "d965a3f05c4bc866ca49fba5851c3a037adebaa2ff00916bb927227219bc25c0"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.164/PandaCode-Linux-aarch64.AppImage"
      sha256 "bc13e685e9abaaac8ce4059b17532dbada3d85be46e61875ae57320aa5a19c61"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
