class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.18/nemonik-trust.zip"
  sha256 "b3cce014d1dc69ee24704f06365719d658bf752d3d4e8f089ac34aa246538d01"
  version "0.0.18"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
