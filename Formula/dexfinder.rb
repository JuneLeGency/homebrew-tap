class Dexfinder < Formula
  desc "Cross-platform APK/DEX method finder with call chain tracing"
  homepage "https://github.com/JuneLeGency/dexfinder"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-darwin-arm64.tar.gz"
      sha256 "206462d2fbf7c28f5eaba8b86472a015786ef405b029f28603c9161f194ae9d9"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-darwin-amd64.tar.gz"
      sha256 "26cf23f7759db56a5cfe821598ea9abe83fe0b4b9c10942a33d08546c48c08b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-linux-arm64.tar.gz"
      sha256 "a9022a3e5746c8148039a44a9e75b3181ba5d4f70c9a5d25a2da26073cbaf75d"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.4.0/dexfinder-linux-amd64.tar.gz"
      sha256 "68534308a2c91b8d499c03a42a61352ecd4dab7eadb6f7f9f7306bc88aa79be1"
    end
  end

  def install
    bin.install Dir["dexfinder-*"].first => "dexfinder"
  end

  test do
    assert_match "dexfinder", shell_output("#{bin}/dexfinder --help 2>&1", 0)
  end
end
