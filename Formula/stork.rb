class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "cf7f5ed75815bf7e302fd76ec55ac89db2d06a682c5a07b1431d18105b3ada62"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "stork-cli"
  end

  test do
  end
end
