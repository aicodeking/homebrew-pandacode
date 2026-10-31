class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.85/PandaCode-Linux-x86_64.AppImage"
  sha256 "0be012d29d7706bffd623a864c7a927a0f0ee5dde1f0b4a1f0b0758f6f0c4212"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.85/PandaCode-Linux-aarch64.AppImage"
      sha256 "3581a520aa15fdd1c650753356e30b26eed576ef4df1f36da4bd120de00f5dc3"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
