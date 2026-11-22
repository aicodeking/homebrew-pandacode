class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.138/PandaCode-Linux-x86_64.AppImage"
  sha256 "49fd9c5901cea0b5cd6607ff539ec97e9ad7649b6bffc89ad70ad40c1d274f77"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.138/PandaCode-Linux-aarch64.AppImage"
      sha256 "8082cf0d99a25f0b3bd3de4fb2523cb4e6f83f8d79ce92193f59437667d006f0"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
