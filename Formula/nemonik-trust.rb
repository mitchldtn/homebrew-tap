class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.16/nemonik-trust.zip"
  sha256 "839e1822e78a218e2322c78e45aa4c9f351bed7413e1814cbd4fce198a3b3e18"
  version "0.0.16"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
