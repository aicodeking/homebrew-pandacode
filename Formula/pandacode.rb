class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.97/PandaCode-Linux-x86_64.AppImage"
  sha256 "ec2148b4d679d6abf08a470ff7e2cfa450468b56f34e5ebf632ae427644cbe68"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.97/PandaCode-Linux-aarch64.AppImage"
      sha256 "07b3fa5e89149ce77d6769280964bdb7ff8e1663ec98a7fb7522db977e291cc4"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
