class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.142/PandaCode-Linux-x86_64.AppImage"
  sha256 "0aa63eca379af7daa7fefdfa4ebcc7892a355769c8d6a04a70426998ea4725d6"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.142/PandaCode-Linux-aarch64.AppImage"
      sha256 "f1ef1771f6ba6919360ceff75d1593ec6597bd89d1ae9d572825dbdb331be8a1"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
