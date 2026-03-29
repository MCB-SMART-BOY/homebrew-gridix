class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "3.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.3.1/gridix-macos-arm64.tar.gz"
      sha256 "693314ba3a60f37a9f08b0c4aed5c3ff7b7e594a98f431e055dad407ff67cec0"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.3.1/gridix-macos-arm64.tar.gz"
      sha256 "693314ba3a60f37a9f08b0c4aed5c3ff7b7e594a98f431e055dad407ff67cec0"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v3.3.1/gridix-linux-x86_64.tar.gz"
    sha256 "93.3.168d1500ed6a9ef9c75a044e0fc2554c770ae284f6eddf968df767475d1"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
