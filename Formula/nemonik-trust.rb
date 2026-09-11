class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.24/nemonik-trust.zip"
  sha256 "4680e23445dd805a23c16d7429f2aa9b4f80caba6cd1b0f001989556c42e0285"
  version "0.0.24"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
