class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "3.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.4.0/gridix-macos-arm64.tar.gz"
      sha256 "b3a3d826c3ea0babd789d0602ae0a8076e944197cf084c62241507aaacf7e233"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.4.0/gridix-macos-arm64.tar.gz"
      sha256 "b3a3d826c3ea0babd789d0602ae0a8076e944197cf084c62241507aaacf7e233"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.4.0/gridix-linux-x86_64.tar.gz"
    sha256 "4dfc0f817876cc26972d740b0b5d1ceb989a2ea7920b270fc26283e49aebb3b3"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
