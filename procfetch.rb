class Procfetch < Formula
    desc "🎨 A command-line system information utility written in C++"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/v0.3.0.tar.gz"
    sha256 "a5dbcecba3ecc617fed9263c9cbbeb235e9052790062b804d6efc68f1963e097"
    license "GPL-3.0"
    
    def install
      system "./configure", "--prefix=#{prefix}"
      system "make", "install"
    end
  
    test do
      system "procfetch -t"
    end
  end
