class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.112/PandaCode-Linux-x86_64.AppImage"
  sha256 "b7bd8fce9b8dfb79f557512bb568b6ff962850c6c1584af7d539b3593832be51"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.112/PandaCode-Linux-aarch64.AppImage"
      sha256 "bf78ad864996cec29f1801c3f20035bd6ddc6730ae1608332cab998dc3ae5c7f"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
