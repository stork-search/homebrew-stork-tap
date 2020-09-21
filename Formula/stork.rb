class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v0.7.4.tar.gz"
  sha256 "ecc3165ff32e6cb0f7a50687e7847e77a0440e93a600371587942b273005e3a9"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
