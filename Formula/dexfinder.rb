class Dexfinder < Formula
  desc "Cross-platform APK/DEX method finder with call chain tracing"
  homepage "https://github.com/JuneLeGency/dexfinder"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-darwin-arm64.tar.gz"
      sha256 "46053962be2d403e0c6255498f48caab288538c3b8dbe90c72ebecf98a8e8ca7"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-darwin-amd64.tar.gz"
      sha256 "892dfa4598bac2b9bf445b475bd813f35894ca74dda2380ec182cad76cc269be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-linux-arm64.tar.gz"
      sha256 "a94eff0772aa00159106a8bf6e2476929bd408afde8dfb5881642bc7d34fe877"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-linux-amd64.tar.gz"
      sha256 "26ae04a9fbce58e4c1b9168553b5d25d5869ce65340252b3dc605787a83c2b90"
    end
  end

  def install
    bin.install Dir["dexfinder-*"].first => "dexfinder"
  end

  test do
    assert_match "dexfinder", shell_output("#{bin}/dexfinder --help 2>&1", 0)
  end
end
