class Dexfinder < Formula
  desc "Cross-platform APK/DEX method finder with call chain tracing"
  homepage "https://github.com/JuneLeGency/dexfinder"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.3.1/dexfinder-darwin-arm64.tar.gz"
      sha256 "ea5d8c972a57377654ec9b9f60cb47050d5b6f49783c02e6966ecf1a93ee515b"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.3.1/dexfinder-darwin-amd64.tar.gz"
      sha256 "2659f0bf16603823662697244d85761070821059047368823a0c019144539c25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.3.1/dexfinder-linux-arm64.tar.gz"
      sha256 "505dbfee92f4fda5136de2a963de813c69f0b65046a186bd0401b79c794d0ab8"
    else
      url "https://github.com/JuneLeGency/dexfinder/releases/download/v0.3.1/dexfinder-linux-amd64.tar.gz"
      sha256 "5ef77b11454b45f93fcd7887af551f9f309e4b16ea44db86b6c148733839a69b"
    end
  end

  def install
    bin.install Dir["dexfinder-*"].first => "dexfinder"
  end

  test do
    assert_match "dexfinder", shell_output("#{bin}/dexfinder --version")
  end
end
