class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.157/PandaCode-Linux-x86_64.AppImage"
  sha256 "114233d75815c681640fc07ed4fcf5ab7d50cd0b2c71704ea1b13e5265c246d9"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.157/PandaCode-Linux-aarch64.AppImage"
      sha256 "7b72beaa9e81ebc2bd7acbb99920e1fed5e610a688b5a1ae0041d033fc553c92"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
