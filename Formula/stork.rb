class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v0.6.0.tar.gz"
  sha256 "81d46484e9d282483c03d969eb541df80b12d9eba8cae8ef7c9adff37ca2ea8b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
