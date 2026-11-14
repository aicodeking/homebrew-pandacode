class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.125/PandaCode-Linux-x86_64.AppImage"
  sha256 "72c0309a7dd2a433cef9aeff0ef6654970efc5c339f28476813ea4e5cdab11f9"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.125/PandaCode-Linux-aarch64.AppImage"
      sha256 "eea402602dd14fb5c2bc86d4bd04b9b28f31b7736811c82f99a615044ed971d4"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
