class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.154/PandaCode-Linux-x86_64.AppImage"
  sha256 "aacfb8d6f673318feb210df37013f7bc780a8ec4a102d3c64b411788f603f8de"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.154/PandaCode-Linux-aarch64.AppImage"
      sha256 "af692ab2088a07d59a012cdbdd952089b6170c2c79fa105ae141c52878b80fb2"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
