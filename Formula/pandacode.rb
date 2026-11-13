class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.123/PandaCode-Linux-x86_64.AppImage"
  sha256 "bfeacfe56f598037932f88b9b4d7373dc08be98c3fd18556177d8b6a9512667b"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.123/PandaCode-Linux-aarch64.AppImage"
      sha256 "f73736fd65648994bc11f6fd28912a831e16f885d06ae267b5f038ae26ec52ed"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
