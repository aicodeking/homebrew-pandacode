class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.26/PandaCode-Linux-x86_64.AppImage"
  sha256 "109784f9ccd0bdcaa751a13480ddd7c590f14c3debaced1cc4389f3661cc60c8"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.26/PandaCode-Linux-aarch64.AppImage"
      sha256 "77f55175fb968a612d0618a717a7e399abcb9586482bca26f0576bf88a6fb61e"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
