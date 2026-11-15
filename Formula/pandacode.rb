class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.128/PandaCode-Linux-x86_64.AppImage"
  sha256 "2b8b93b3b8370ec0a2560f184159949cb37674fd3b9e8c09137b9e2ff6362a90"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.128/PandaCode-Linux-aarch64.AppImage"
      sha256 "28d22b1083a9eb2df676424d6fbe020537e468f766bd523ba4fc96e95e6f5be9"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
