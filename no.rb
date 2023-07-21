class No < Formula
    desc "🚫 That's What She Said"
    url "https://github.com/TanmayPatil105/no/archive/refs/tags/v9.0.tar.gz"
    sha256 "81f28624f3f268b79dd005ad4496a09a0faabb286d51558dadb243a594b0f5af"
    license "WTFPL"
    
    def install
      system "make"
      bin.install "no"
    end
  end
