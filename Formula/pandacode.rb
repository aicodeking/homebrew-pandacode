class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.131/PandaCode-Linux-x86_64.AppImage"
  sha256 "d4ef7a5813366436781e96493b0a07b668cc8f288ea8ec57f84838f50a811932"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.131/PandaCode-Linux-aarch64.AppImage"
      sha256 "426bb3c53ed6d28f7dee31afcb53c0d7ea3d2f54b9cd3e14cb2b6a61c24aead7"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
