class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.27/nemonik-trust.zip"
  sha256 "1b19ace2b68e0f56fc041f3a2c7f7b047707c077609294b41db088c7d6784308"
  version "0.0.27"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
