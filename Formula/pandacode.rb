class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.34/PandaCode-Linux-x86_64.AppImage"
  sha256 "fc5295a310f8c9565ab2418d6ba00d916be26fe51a70d4fc17be8db021225ab2"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.34/PandaCode-Linux-aarch64.AppImage"
      sha256 "cbef1bbb8049f0e34c3ae4e6e8d92a9f56496f08e184a3d83bc9340faf0edbd2"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
