class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.20/nemonik-trust.zip"
  sha256 "b14f73e02c0c5d9bfb764f52b41acdb07ba410455bca94ba4cd81e0144250282"
  version "0.0.20"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
