class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v1.1.0/gridix-macos-arm64.tar.gz"
      sha256 "7746ca752f156218404fe7bccc3d3ac33c53dae9d7ed2c61bea52e94d9d4b61d"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v1.1.0/gridix-macos-arm64.tar.gz"
      sha256 "7746ca752f156218404fe7bccc3d3ac33c53dae9d7ed2c61bea52e94d9d4b61d"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v1.1.0/gridix-linux-x86_64.tar.gz"
    sha256 "9fb93e7a6943e5ca6b1c779f90e54c7b5c2d511b931001baff632bc918d38fad"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
