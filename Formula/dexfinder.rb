class Dexfinder < Formula
  desc "Cross-platform APK/DEX method finder with call chain tracing"
  homepage "https://github.com/JuneLeGency/dexfinder"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.3.1/dexfinder-darwin-arm64.tar.gz"
      sha256 "e784a5d0fb0e4870a6a0c67604598ec28d1a94a0292ee3b498d28f24b95ac47d"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.3.1/dexfinder-darwin-amd64.tar.gz"
      sha256 "52abaf99f959001c716658de4db15e5f6e6146884535ada1f9998e1698a4920e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.3.1/dexfinder-linux-arm64.tar.gz"
      sha256 "9989100640f461869b018dfb2c6b915a28146f98718d87116568e8781e8ae483"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.3.1/dexfinder-linux-amd64.tar.gz"
      sha256 "9e9f954821272f9cce00bf3facb16a33952a6e0093275d0f4f1cfa49f30f210b"
    end
  end

  def install
    bin.install Dir["dexfinder-*"].first => "dexfinder"
  end

  test do
    assert_match "dexfinder", shell_output("#{bin}/dexfinder --help 2>&1", 0)
  end
end
