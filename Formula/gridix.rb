class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "4.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v4.1.0/gridix-macos-arm64.tar.gz"
      sha256 "2ca3f436a15b1742435245fd42e955be7fad82d3757d4a0376858058a1110f0b"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v4.1.0/gridix-macos-arm64.tar.gz"
      sha256 "2ca3f436a15b1742435245fd42e955be7fad82d3757d4a0376858058a1110f0b"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v4.1.0/gridix-linux-x86_64.tar.gz"
    sha256 "978b35bb8ed767e9b1d707f1bf0aa0a1c6d9b4d19d2e7c435f873253b189c3ce"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
