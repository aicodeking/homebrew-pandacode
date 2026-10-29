class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.73/PandaCode-Linux-x86_64.AppImage"
  sha256 "23fd97440a396dcbf4add711f842866bae90721e7e38ad1c310c6e5a986b40e9"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.73/PandaCode-Linux-aarch64.AppImage"
      sha256 "e5c0dfae4aaa16bacfdf3f33627fb1104cb441638ad26c828ec82db9b2e34122"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
