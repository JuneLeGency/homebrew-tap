class Dexfinder < Formula
  desc "Cross-platform APK/DEX method finder with call chain tracing"
  homepage "https://github.com/JuneLeGency/dexfinder"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-darwin-arm64.tar.gz"
      sha256 "7007d1307657bf99107ba7ebbf61a08af87b79660d8555ca91891e235943b1a3"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-darwin-amd64.tar.gz"
      sha256 "0493c5182825dc204d3002c36b2f5b6c1ac33c8d69168cfefb9f9f1483d02c5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-linux-arm64.tar.gz"
      sha256 "7916626c43ce494d70548d2916a84e128014deef0541949007d5168a1c51631f"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-linux-amd64.tar.gz"
      sha256 "27c6cb0d0e989cf949cf818766fb0af3532517d5675685f80799fa0ed2c6cc90"
    end
  end

  def install
    bin.install Dir["dexfinder-*"].first => "dexfinder"
  end

  test do
    assert_match "dexfinder", shell_output("#{bin}/dexfinder --help 2>&1", 0)
  end
end
