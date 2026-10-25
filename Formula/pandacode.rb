class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.47/PandaCode-Linux-x86_64.AppImage"
  sha256 "1d4c03804c10abb4d978df6bce4b11660af810fe2bb15954313bc710267b6578"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.47/PandaCode-Linux-aarch64.AppImage"
      sha256 "2484e9b606d502e2a5a0b05015b2295149da1044bf777fadbddd417ec6bf5548"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
