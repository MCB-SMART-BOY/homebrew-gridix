class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v0.5.2/gridix-macos-arm64.tar.gz"
      sha256 "c715ba07b74d3772c072915dcee7136e907df60c0943693bc57084f8e00ed6b2"
    end
    on_intel do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v0.5.2/gridix-macos-x86_64.tar.gz"
      sha256 "435c60714571a507e99a3c311627af12af2fa94672f3883a6cf010e504736dcc"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v0.5.2/gridix-linux-x86_64.tar.gz"
    sha256 "5076f24dabde987c6ab0b76f314affa7e8ba1b415eab5b497d665f35c393171b"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
