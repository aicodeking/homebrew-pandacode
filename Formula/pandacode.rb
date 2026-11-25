class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.149/PandaCode-Linux-x86_64.AppImage"
  sha256 "0300022ea693073ce7fb9f38ac10aba0818421f9008f6f2af440d1d7b7d8b41d"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.149/PandaCode-Linux-aarch64.AppImage"
      sha256 "fd63dbf363920cc8a29174bb5e19a8cb00632e6b15e5a47f26b375b3eab2126d"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
