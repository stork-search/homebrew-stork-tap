class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.0.0.tar.gz"
  sha256 "743381efd90c7978148caf4118413d1b2e87ba1dd069c99d4ab5d93ea8e16737"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
