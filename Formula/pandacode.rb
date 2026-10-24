class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.41/PandaCode-Linux-x86_64.AppImage"
  sha256 "3d30db0ffa640ea69942c52a1f1898f6fda7158d3e749d11c2325f28fd4b6b56"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.41/PandaCode-Linux-aarch64.AppImage"
      sha256 "b0a21c0b96e53173a8470f6e52e0691afe8890dee3274ff09f8e114120eb312b"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
