class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "5.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v5.0.0/gridix-macos-arm64.tar.gz"
      sha256 "7bfb7be7cfeec01411455ead145eea23158a7c2e87cab2259672c49cb168f814"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v5.0.0/gridix-macos-arm64.tar.gz"
      sha256 "7bfb7be7cfeec01411455ead145eea23158a7c2e87cab2259672c49cb168f814"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v5.0.0/gridix-linux-x86_64.tar.gz"
    sha256 "1d60dda3a9ca6ff86f358c3496074ddfa5540123d2a4d9cf7e2e1c174a991c1f"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
