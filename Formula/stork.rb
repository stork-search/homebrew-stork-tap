class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.0.1.tar.gz"
  sha256 "edecf91e3c06fe63243a24b6bc131b385bfb784afcc25645729e30d4065e2d2b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
