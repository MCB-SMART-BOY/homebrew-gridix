class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "6.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v6.0.0/gridix-macos-arm64.tar.gz"
      sha256 "b52b68201f748fb110f7afd838160e1da14b31fc93bf9fb465f73738df592c78"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v6.0.0/gridix-macos-arm64.tar.gz"
      sha256 "b52b68201f748fb110f7afd838160e1da14b31fc93bf9fb465f73738df592c78"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v6.0.0/gridix-linux-x86_64.tar.gz"
    sha256 "96aedc86b716fead9e0ef8114a13284e85742c69e0abb46d16d2c8b1483af1fc"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
