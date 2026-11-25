class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.146/PandaCode-Linux-x86_64.AppImage"
  sha256 "57a3ae34f858acbf55fafb913e173b8e4961f6252b6fd4ab427c099b243e7e6f"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.146/PandaCode-Linux-aarch64.AppImage"
      sha256 "cef37fd931e90fba237552076a1449748ac75ca11b87a3e027ac764ddf59c661"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
