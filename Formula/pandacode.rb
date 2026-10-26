class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.56/PandaCode-Linux-x86_64.AppImage"
  sha256 "d99bc42c2c64bdb0bd18ad9f27b4365f502ab8fdc7e4eb00911e7b9e782b8273"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.56/PandaCode-Linux-aarch64.AppImage"
      sha256 "8e27bfa3c49387ea72752cd0fc0e5ae9db2929cb167b7c294cc652f171a101be"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
