class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "6.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v6.1.0/gridix-macos-arm64.tar.gz"
      sha256 "c44b8065a7868560eac73d89fa1c9ba79cb9cb020933370a971a6a766a36be3b"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v6.1.0/gridix-macos-arm64.tar.gz"
      sha256 "c44b8065a7868560eac73d89fa1c9ba79cb9cb020933370a971a6a766a36be3b"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v6.1.0/gridix-linux-x86_64.tar.gz"
    sha256 "c3fc59c27db31dbdcdabc6f115e3fd8f2add1e74070fb61838a142944fce1362"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
