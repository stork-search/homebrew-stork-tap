class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.5.0.tar.gz"
  sha256 "4f9cf8dcbf3ebec83d64f34d7b1d9b39ce753e70d872b46d9a4a314bad10bf01"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "stork-cli"
  end

  test do
  end
end
