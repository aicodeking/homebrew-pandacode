class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.61/PandaCode-Linux-x86_64.AppImage"
  sha256 "93315b261c306c78aebebaa9262c2a888a6e185c92540c9a96249bbe03685183"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.61/PandaCode-Linux-aarch64.AppImage"
      sha256 "b2cafc8d387d53d4cebb2a91929db276cac463dc81000a8913227ab6f709fd9d"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
