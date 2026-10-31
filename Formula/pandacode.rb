class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.82/PandaCode-Linux-x86_64.AppImage"
  sha256 "0948aa5bca79d47a50dd702a52c08c40e051ebfcce6c0ba3a4a022e72b34b36f"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.82/PandaCode-Linux-aarch64.AppImage"
      sha256 "a7fa41a2ae2c7764879dc96a7e80868bd897d9abde97b611be77475412117633"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
