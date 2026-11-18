class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.130/PandaCode-Linux-x86_64.AppImage"
  sha256 "a6efae0fcf23e638bdf8a164b2f8137086f0e56effdb3aa4a5926aa3102d6161"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.130/PandaCode-Linux-aarch64.AppImage"
      sha256 "6e99951bd645ccbd07a359159a06d59174e3214dd0c482943501c6ebc239da32"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
