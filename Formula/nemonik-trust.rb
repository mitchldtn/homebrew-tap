class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.23/nemonik-trust.zip"
  sha256 "6fdaecb613c25816837e01c7537fd87b8ef4ee636f12ececbd8352d9d48cf19f"
  version "0.0.23"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
