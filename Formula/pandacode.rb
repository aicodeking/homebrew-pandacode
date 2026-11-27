class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.161/PandaCode-Linux-x86_64.AppImage"
  sha256 "ea09b25fe4fe2e0d8092f3b4b902e2b6a5a7a6bd4b7a4c8e1454856ab5f1c2ff"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.161/PandaCode-Linux-aarch64.AppImage"
      sha256 "940345f817109f42bea64b61da94e54d48ceea96c2d5fe617fc9d9a492d99246"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
