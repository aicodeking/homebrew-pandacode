class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.39/PandaCode-Linux-x86_64.AppImage"
  sha256 "39990e60d358c9422b34b8e43180251280e821fe23d67b824645de39f004d346"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.39/PandaCode-Linux-aarch64.AppImage"
      sha256 "55ffd95f75cc8b6be9c8ee688cdd20d7e98e14785f236d921fd4d7469eb0ae60"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
