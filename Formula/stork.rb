class Stork < Formula
  desc "Impossibly fast web search, made for static sites."
  homepage "https://stork-search.net"
  url "https://github.com/jameslittle230/stork/archive/v1.1.0.tar.gz"
  sha256 "f951ebba14fe5b5902e60c650f3f478035bd3315286b8ebc68888b0f2bbc3203"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
  end
end
