class Doomscrum < Formula
  desc "PRD brainrot triage: backlog specs as swipeable shortform video"
  homepage "https://github.com/phrazzld/doomscrum"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phrazzld/doomscrum/releases/download/v0.2.0/doomscrum-macos-arm64.tar.gz"
      sha256 "8acee3b0188503105a54f9c4c85700a7db08892a6c089d66e581ea5b6276869b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phrazzld/doomscrum/releases/download/v0.2.0/doomscrum-linux-x86_64.tar.gz"
      sha256 "817d519780bd041f143d9600fd8a28bc00144ee83a055edeab3783ade2aeeffc"
    end
  end

  def install
    bin.install "doomscrum"
  end

  test do
    system "#{bin}/doomscrum", "--help"
  end
end
