class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "2.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v2.0.2/gridix-macos-arm64.tar.gz"
      sha256 "243e94da2606bd135232f28161535cac9966a50e7c4ce5abe464d1359e49758d"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v2.0.2/gridix-macos-arm64.tar.gz"
      sha256 "243e94da2606bd135232f28161535cac9966a50e7c4ce5abe464d1359e49758d"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v2.0.2/gridix-linux-x86_64.tar.gz"
    sha256 "ed9f7c3f5c89af9b500088cceadb1b6b19e7061d582bab55828527a0b12a8309"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
