class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v0.7.1.tar.gz"
  sha256 "a578f632e70f6e4a309c8eea575382a14ac0d2d83419fb88f50975134f60dbf8"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
