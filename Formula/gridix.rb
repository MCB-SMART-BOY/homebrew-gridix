class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "3.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.2.0/gridix-macos-arm64.tar.gz"
      sha256 "c82fb56c34ce593db57a1be00699900bf729c1eea140dc954c60613492674be4"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.2.0/gridix-macos-arm64.tar.gz"
      sha256 "c82fb56c34ce593db57a1be00699900bf729c1eea140dc954c60613492674be4"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.2.0/gridix-linux-x86_64.tar.gz"
    sha256 "f9bd02249f909e791c6f01f63f84f6d36d3798b627cfec54af74b30a7742d717"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
