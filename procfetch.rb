class Procfetch < Formula
    desc "🎨 A command-line system information utility written in C++"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/v0.2.2.tar.gz"
    sha256 "fb903fe1fae1f40aaa5e1942a559472253b553706c05039cb6be601eb3ea1c96"
    license "GPL-3.0"
    
    def install
      system "./configure", "--prefix=#{prefix}"
      system "make", "install"
    end
  
    test do
      system "procfetch -t"
    end
  end
