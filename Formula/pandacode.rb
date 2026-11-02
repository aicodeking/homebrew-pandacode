class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.91/PandaCode-Linux-x86_64.AppImage"
  sha256 "bf5debd295119a83419bc454ace42c1a20b5bc316962f935f5f65013695c8f5c"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.91/PandaCode-Linux-aarch64.AppImage"
      sha256 "0ae59ea4911b0065394682ee5a9a3021bd26106378c773fd2fc77878f85347a8"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
