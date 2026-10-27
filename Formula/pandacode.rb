class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.67/PandaCode-Linux-x86_64.AppImage"
  sha256 "3eacb79f4c0dc21900486aeb04de0b6af532bfe7a2d89bb6efea29ea564236b7"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.67/PandaCode-Linux-aarch64.AppImage"
      sha256 "e4e12fce59e9935aacc00bedbba87cf7bc509949b1ceb389a3a9dae5bc922bd2"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
