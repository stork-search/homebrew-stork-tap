class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.0.3.tar.gz"
  sha256 "32c4c3e8499c8d5680e81b53e601f4ffe2409fc4e6dce1317664d44488af8e54"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
