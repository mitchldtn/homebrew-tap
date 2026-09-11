class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.22/nemonik-trust.zip"
  sha256 "60b98b8cf6127f03cb5f546e860c7630f9c16f73ab35314f2d57eff3a1da4f35"
  version "0.0.22"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
