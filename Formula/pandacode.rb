class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.31/PandaCode-Linux-x86_64.AppImage"
  sha256 "56a5249cb2a63bac9aca5b9425087cc9b3932af832fff928a57ad0002454f15e"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.31/PandaCode-Linux-aarch64.AppImage"
      sha256 "fae4c1aad8f24dced487405ed7d3eefbf3f68255fd4a3932fe1159bf6fa4489a"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
