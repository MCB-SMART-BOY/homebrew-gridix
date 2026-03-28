class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "3.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.2.1/gridix-macos-arm64.tar.gz"
      sha256 "e0eb4109ec35d0f1dc9edd73ed73dcfbce2819cbd70db4e1a79a45cbeea307a2"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.2.1/gridix-macos-arm64.tar.gz"
      sha256 "e0eb4109ec35d0f1dc9edd73ed73dcfbce2819cbd70db4e1a79a45cbeea307a2"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.2.1/gridix-linux-x86_64.tar.gz"
    sha256 "dcb5b543dbf7406a092042191e563dc3a72b0aa93d2502a14a94151dac18e647"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
