class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.108/PandaCode-Linux-x86_64.AppImage"
  sha256 "76ff3e770e81b1b2927f3993606a28744e41be65946511027fb26c9b8e69efa5"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.108/PandaCode-Linux-aarch64.AppImage"
      sha256 "3c63bc597d8906e48b0c3da411c0e99174a0a7420d22c6258724833caff49d1e"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
