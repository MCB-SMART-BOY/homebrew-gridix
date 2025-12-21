class Gridix < Formula
  desc "Fast, secure, cross-platform database management tool with Helix/Vim keybindings"
  homepage "https://github.com/MCB-SMART-BOY/Gridix"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v2.0.0/gridix-macos-arm64.tar.gz"
      sha256 "ccb6c2bb6f0b38a12b7b0015c0437acaed214921bd6e938b00f5b13c2382ddf2"
    end
    on_intel do
      # Intel Mac users can use ARM build with Rosetta 2
      url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v2.0.0/gridix-macos-arm64.tar.gz"
      sha256 "ccb6c2bb6f0b38a12b7b0015c0437acaed214921bd6e938b00f5b13c2382ddf2"
    end
  end

  on_linux do
    url "https://github.com/MCB-SMART-BOY/Gridix/releases/download/v2.0.0/gridix-linux-x86_64.tar.gz"
    sha256 "a9e929612fe53a9165ad377c8854443917a7e27a67bb07c88da5c81ed8699909"
  end

  def install
    bin.install "gridix"
  end

  test do
    system "#{bin}/gridix", "--help"
  end
end
