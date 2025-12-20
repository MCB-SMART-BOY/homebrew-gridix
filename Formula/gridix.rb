class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v1.0.0/gridix-macos-arm64.tar.gz"
      sha256 "609b8aa96f6b4ccbbadd6d94892f9cf416c55b06e87f8c1b282a21d58a032b5b"
    end
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v1.0.0/gridix-macos-arm64.tar.gz"
      sha256 "609b8aa96f6b4ccbbadd6d94892f9cf416c55b06e87f8c1b282a21d58a032b5b"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v1.0.0/gridix-linux-x86_64.tar.gz"
    sha256 "cf97bba99a6d7e388204fb8d23086433e3df459e16673105791f7502b6d23995"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
