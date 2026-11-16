class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.129/PandaCode-Linux-x86_64.AppImage"
  sha256 "9aa36a4bbd35c9d70e79f93cc41fa652ed131a33bde7775f21023889bad0cc9c"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.129/PandaCode-Linux-aarch64.AppImage"
      sha256 "97d5a277f3c51474d4c49b4fe783387310f08a5dcae8202108b714cda03e7fa4"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
