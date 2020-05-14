class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v0.7.0.tar.gz"
  sha256 "1649e6ce1abf7e65de39c112dc7f8ac80471eb79c0692e52baff13499895f112"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
