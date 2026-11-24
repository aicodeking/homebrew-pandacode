class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.144/PandaCode-Linux-x86_64.AppImage"
  sha256 "40fd31d31ea43540b9cb4dad0ca7e926ba4a6fd131f3a9a17f878bee4f723db1"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.144/PandaCode-Linux-aarch64.AppImage"
      sha256 "bd1c9acded8b5b4864a551945b72f4cdbbd679df0021bec6a1944b6212835766"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
