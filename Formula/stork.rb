class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v0.7.2.tar.gz"
  sha256 "089951e8235a95b3e08421b53a1f0dc1a7ea9f6c6c34ef280fb2c39b8bcae3de"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
