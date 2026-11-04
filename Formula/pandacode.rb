class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.94/PandaCode-Linux-x86_64.AppImage"
  sha256 "12516a6136509323549add6fbf958021e8f78c90c6b85594c09c9137a8b304e6"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.94/PandaCode-Linux-aarch64.AppImage"
      sha256 "8e0ff2313d08192b3d3c48d6ccf214860ec815b7bd1828b7fcaa60d6600c73f5"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
