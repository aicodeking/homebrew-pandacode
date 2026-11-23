class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.140/PandaCode-Linux-x86_64.AppImage"
  sha256 "42d7298f62e6fe2ce14eda0058b3699a427bee48f862ac846f7164fd44618f7c"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.140/PandaCode-Linux-aarch64.AppImage"
      sha256 "a11d3be2b71b193f6153c555c919d2ab1e3c3b6f827583d56b7563df82a8858b"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
