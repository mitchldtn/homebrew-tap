class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.25/nemonik-trust.zip"
  sha256 "6d300bb26ec3937f7e16db62319b9c45fe48319b195d11d40aae6576e584c60f"
  version "0.0.25"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
