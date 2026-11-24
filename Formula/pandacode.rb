class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.145/PandaCode-Linux-x86_64.AppImage"
  sha256 "7e38f32c830a99aebfa37da4539cac30d3cdf7f35437c4d67e89ef7ca0ce5bae"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.145/PandaCode-Linux-aarch64.AppImage"
      sha256 "f652e611ca47ecb8b123c4afc9e662f9fb0ab9afc81db588b135432149edca2e"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
