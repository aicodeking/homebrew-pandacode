class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.90/PandaCode-Linux-x86_64.AppImage"
  sha256 "9a1669aeb7650026f9e83b8fcf6c89f67590089f667e69e3d4365fb0dfbcf489"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.90/PandaCode-Linux-aarch64.AppImage"
      sha256 "6b6d8de16e0bdd7579a5e073626e622d52ce9a5792ac3f66ba173d8b12ed3936"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
