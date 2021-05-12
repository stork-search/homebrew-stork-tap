class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.2.1.tar.gz"
  sha256 "c6e780f171ffe02a0d50f28b0fa1b9efcbb315ea60839125ebebd7120e2f5a30"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
