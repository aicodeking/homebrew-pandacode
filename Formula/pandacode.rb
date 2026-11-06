class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.100/PandaCode-Linux-x86_64.AppImage"
  sha256 "29c8863766c03725b5df63f5bdf8146cb9b8f776b97cce6687d79ea10b70b39d"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.100/PandaCode-Linux-aarch64.AppImage"
      sha256 "8c6117cc4a7b0d30a33073b98b130899d47b262d5cd8244766925f03644aa5ce"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
