class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.2.0.tar.gz"
  sha256 "1fe2d8f37f5f0104faa04a92bbc76cb366f6c716b3c83ecb16af518b637f10be"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
