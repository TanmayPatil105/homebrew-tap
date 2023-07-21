class No < Formula
    desc "🚫 That's What She Said"
    url "https://github.com/TanmayPatil105/no/archive/refs/tags/v9.0.tar.gz"
    sha256 "a04508042d0bfbe77ab711b5847fd011f89d057d9366444e74e389a93d862a52"
    license "WTFPL"
    
    def install
      system "make"
      bin.install "no"
    end
  end
