class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.120/PandaCode-Linux-x86_64.AppImage"
  sha256 "3fbd54e7a69c795a5645169438d9845702fff4ead3ff85fc97a128f8a1a1d2de"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.120/PandaCode-Linux-aarch64.AppImage"
      sha256 "e096dde0eecbe9d1de1421f768b2a6a1b02ea92200e8bbb4d07d441e1fb5c3a7"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
