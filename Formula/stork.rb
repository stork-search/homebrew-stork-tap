class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.4.1.tar.gz"
  sha256 "aa22f75b9377bd755485a95bc90d8624e535ead8d2e676b5c47a72552bcb9c2b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "stork-cli"
  end

  test do
  end
end
