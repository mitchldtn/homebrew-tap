class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.15/nemonik-trust.zip"
  sha256 "be8490c4ed9f6cc0b9ef995d6ab34cc5c047714d35d2e05c5cd474ae7c86e624"
  version "0.0.15"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
