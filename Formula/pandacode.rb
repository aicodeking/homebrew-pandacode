class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.48/PandaCode-Linux-x86_64.AppImage"
  sha256 "c1f7e93a10f34cd3943047fecd4510ee964471c69e1d593fedff334c767c8866"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.48/PandaCode-Linux-aarch64.AppImage"
      sha256 "3624c331fdf34c3f67dfcdb6c6bde1a1d09708bae8ca7a1fad9c580eb11745bf"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
