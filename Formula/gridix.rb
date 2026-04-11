class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "4.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v4.0.0/gridix-macos-arm64.tar.gz"
      sha256 "243b5a3a912803056d35f77d186468c8bd43b60364615d6982d4ba7dd35249e4"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v4.0.0/gridix-macos-arm64.tar.gz"
      sha256 "243b5a3a912803056d35f77d186468c8bd43b60364615d6982d4ba7dd35249e4"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v4.0.0/gridix-linux-x86_64.tar.gz"
    sha256 "294a145142f7c6663df623e84bb1cfdfee4229ece75f79123640e355e949b3e4"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
