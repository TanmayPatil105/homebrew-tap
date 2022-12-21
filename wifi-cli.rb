class WifiCli < Formula
    desc "Wi-fi through command line"
    homepage ""
    url "https://github.com/TanmayPatil105/wifi-cli/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "cfcd367b9d6612a1fbb5e26285283386011699ee688d4abbbb22bb0d317321bb"
    license ""
  
    # depends_on "cmake" => :build
  
    def install
      bin.install "src/wifi"
    end
  
    test do
      system "#{bin}/wifi -h"
    end
  end
