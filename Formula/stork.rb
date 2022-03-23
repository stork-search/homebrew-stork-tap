class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.4.2.tar.gz"
  sha256 "2ebf0a8ff85fa08df629195f88f627b354129e2c0935c8c9b4ab9a4af3cf8ab4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "stork-cli"
  end

  test do
  end
end
