class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.19/nemonik-trust.zip"
  sha256 "0db6e6edc33059ff705f6b9ed8d62e523545315e0c402c3b7ce04cba0884f751"
  version "0.0.19"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
