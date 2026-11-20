class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.134/PandaCode-Linux-x86_64.AppImage"
  sha256 "12e55999b6ae434c74f0582901fda5de6eee3a0f40f2bb4a6a0e4c4e2203b6b9"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.134/PandaCode-Linux-aarch64.AppImage"
      sha256 "378af4363c193795cee46bfa890c2d08e47aa312a72cfe4111feee68b98e413b"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
