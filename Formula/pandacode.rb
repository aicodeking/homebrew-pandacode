class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.163/PandaCode-Linux-x86_64.AppImage"
  sha256 "08be6d0835529b1f6da2713686d61514bca4af8472a914eb0e43e756347d73de"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.163/PandaCode-Linux-aarch64.AppImage"
      sha256 "98ab2459d9cbd13bd91a8c07933aaed607e46cec80030a60d2f8c5854d6acddb"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
