class Pandacode < Formula
  desc "Desktop workspace for coding agents"
  homepage "https://github.com/aicodeking/pandacode"
  url "https://github.com/aicodeking/pandacode/releases/download/v0.3.76/PandaCode-Linux-x86_64.AppImage"
  sha256 "f0debe18b101f94b53a6b3c0f92406613ec77de2c60e296fd6759aedf317319d"
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/aicodeking/pandacode/releases/download/v0.3.76/PandaCode-Linux-aarch64.AppImage"
      sha256 "130616564f8dafc41c8bfe8dd2a7c0dbb7535155016a8edd63ebcc2c5f635e2f"
    end
  end

  def install
    bin.install Dir["PandaCode-Linux-*.AppImage"].first => "pandacode"
  end

  test do
    assert_predicate bin/"pandacode", :executable?
  end
end
