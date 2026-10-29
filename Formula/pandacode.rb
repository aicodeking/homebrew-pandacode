class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.79/PandaCode-Linux-x86_64.AppImage"
  sha256 "0f085e9b90cc1b8192cf8017270d0bf1ab84119b623dccc819938465c42cfd6a"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.79/PandaCode-Linux-aarch64.AppImage"
      sha256 "6fa2ed0332f5dc3e1bf44781b5ccb4b2e43e26a65c506dd3aebaf1ea1ba3c346"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
