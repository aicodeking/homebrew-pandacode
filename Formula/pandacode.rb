class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.71/PandaCode-Linux-x86_64.AppImage"
  sha256 "03da077c11d3ace034652086d5a1db1c5502d3fbbff92414a47eae1a7861b308"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.71/PandaCode-Linux-aarch64.AppImage"
      sha256 "5f8882db42f98d6ba33ba9ec6dce8f81d23affc36384d4cb494291bcc9cbf0a2"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
