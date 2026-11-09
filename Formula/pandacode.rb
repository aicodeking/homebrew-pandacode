class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.105/PandaCode-Linux-x86_64.AppImage"
  sha256 "93ef8d16cddb184bf118927422148a9f54b64c0fe4590700c2ae65ac8ff6728e"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.105/PandaCode-Linux-aarch64.AppImage"
      sha256 "b6704dfbb0f3ab43917741a3ce43cbb9de52447932427b74a73fb6a84080def5"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
