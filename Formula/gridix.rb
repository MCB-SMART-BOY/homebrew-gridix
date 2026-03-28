class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "3.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.3.0/gridix-macos-arm64.tar.gz"
      sha256 "f798b97bbf45966342be5fa21ff0df61170fb363dcdaf71bcfd83dd2c440cb6d"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.3.0/gridix-macos-arm64.tar.gz"
      sha256 "f798b97bbf45966342be5fa21ff0df61170fb363dcdaf71bcfd83dd2c440cb6d"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.3.0/gridix-linux-x86_64.tar.gz"
    sha256 "93d32068d1500ed6a9ef9c75a044e0fc2554c770ae284f6eddf968df767475d1"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
