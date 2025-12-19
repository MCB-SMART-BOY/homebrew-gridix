class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v0.5.1/gridix-macos-arm64.tar.gz"
      sha256 "887aaf2d03c80ba033bdd55ab3f6ea481885fa20aa5f1cca61e91972d86e1076"
    end
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v0.5.1/gridix-macos-x86_64.tar.gz"
      sha256 "3a1dffece65e0cdb19d4304fb6072c433f42a73de0e08dcbb53964a8284b5adc"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v0.5.1/gridix-linux-x86_64.tar.gz"
    sha256 "35b516e172d2093988108057520fe5eb5b896f68454460af1c3b2d4f06c9192e"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
