class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.43/PandaCode-Linux-x86_64.AppImage"
  sha256 "7dd9f44de6bbf8f22e03b7597f6b9300156d5394ebbb60ac4a1f0fe3a6fed8cf"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.43/PandaCode-Linux-aarch64.AppImage"
      sha256 "9a28a9115540d779bb4b74e566bfa02189b3e4a08dbc74e47ebfa4173378ed77"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
