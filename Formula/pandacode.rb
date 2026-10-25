class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.42/PandaCode-Linux-x86_64.AppImage"
  sha256 "5bdea2238d2eb9d6f10f05066b78e5ca763bdfdfb247feb5270b13b2c105624a"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.42/PandaCode-Linux-aarch64.AppImage"
      sha256 "0affabb7c898360c232b6ffa4a6f712ae454c0b1175b5c9ce383dfd0af9e4376"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
