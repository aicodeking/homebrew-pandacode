class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.126/PandaCode-Linux-x86_64.AppImage"
  sha256 "aabc0a011adb43e822aee6e68f55cce2e4ca9bf2747bbad0efbd8870cf1d3bce"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.126/PandaCode-Linux-aarch64.AppImage"
      sha256 "e2ee1c8d3ec3761db4fd9e2f7691592bfd794aeb6d6a37541e9f4dadeb056b4a"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
