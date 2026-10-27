class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.65/PandaCode-Linux-x86_64.AppImage"
  sha256 "1457ea20ea685fb5a0884315e2707c0d9f490b1675050dd0fd2ea0b88ba0fae4"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.65/PandaCode-Linux-aarch64.AppImage"
      sha256 "c90f536e71b500b75e0a0bd57061526737ab1624d14964eb99f846ca58a4becd"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
