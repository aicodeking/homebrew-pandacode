class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.87/PandaCode-Linux-x86_64.AppImage"
  sha256 "2b07246c0843498104736df87e79fdeed283afefcb72e8e77de49fad452a9512"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.87/PandaCode-Linux-aarch64.AppImage"
      sha256 "7d852e0d17153c0cb8a97ac44535956f31afaf829db0290ec3080e5315bb357b"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
