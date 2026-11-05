class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.98/PandaCode-Linux-x86_64.AppImage"
  sha256 "c024d2cee9dbf119edb597c1c7e426433775d90840bd9e59035322080dff3bb0"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.98/PandaCode-Linux-aarch64.AppImage"
      sha256 "89960ca13c961b89c8045433de498e647883b55eb3320f9d700c3feeb63c4539"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
