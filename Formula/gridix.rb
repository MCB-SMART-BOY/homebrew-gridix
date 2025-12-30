class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "2.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v2.0.1/gridix-macos-arm64.tar.gz"
      sha256 "b8d86ada301c51ccd7ea010868aac6ca94a9c8058788e509b4abace71a09069b"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v2.0.1/gridix-macos-arm64.tar.gz"
      sha256 "b8d86ada301c51ccd7ea010868aac6ca94a9c8058788e509b4abace71a09069b"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v2.0.1/gridix-linux-x86_64.tar.gz"
    sha256 "ac7b43ea1b4cced0ae93c2d0d2f51867ba2ef8b8c4ae620418e3d8a82f1f2a13"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
