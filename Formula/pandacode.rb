class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.104/PandaCode-Linux-x86_64.AppImage"
  sha256 "175e06bd78c44af9e021807ac603c7fae98c34bdec6f8604688fb377b7317091"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.104/PandaCode-Linux-aarch64.AppImage"
      sha256 "ad070d3d044f0ed71d493f2dd68e23f8677dacfe4a0f783fdae4fb302cfb8f9e"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
