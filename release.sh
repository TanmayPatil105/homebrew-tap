TAP_NAME="reduce"
BINARY_NAME="reduce"
VERSION=$(curl -s https://api.github.com/repos/TanmayPatil105/reduce/releases/latest | jq -r .tag_name)
SHA256=$(curl -s -L "https://github.com/TanmayPatil105/reduce/archive/refs/tags/$VERSION.tar.gz" | shasum -a 256 | cut -d " " -f 1)

cat > $TAP_NAME.rb <<EOF
class Reduce < Formula
    desc "A command line URL shortener using reduced.to API"
    homepage ""
    url "https://github.com/TanmayPatil105/reduce/archive/refs/tags/$VERSION.tar.gz"
    sha256 "$SHA256"
    license "MIT"

    depends_on "go" => :build

    def install
      system "make"
      bin.install "$BINARY_NAME"
    end

    test do
      system "#{bin}/$BINARY_NAME -h"
    end
  end
EOF