class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.0.2.tar.gz"
  sha256 "78ca89a0c23e80d2d480016e7b19d943d481e795f3fb572a8b062c800105e9aa"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
