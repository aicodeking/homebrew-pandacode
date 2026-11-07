class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.101/PandaCode-Linux-x86_64.AppImage"
  sha256 "4902fda1f79cff4572697646a5b0e75308cd65ad493d3943fe18d0a70bc0f7d5"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.101/PandaCode-Linux-aarch64.AppImage"
      sha256 "a7512183676cfaf0aaadc2bdc6c960d5cd1fe766a73c35dde4a8f520e4a3d99f"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
