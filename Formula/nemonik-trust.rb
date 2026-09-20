class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.26/nemonik-trust.zip"
  sha256 "3b3f07d5becf6425f7309371aa93890d939254b926ae352d36b26b4e77da64f0"
  version "0.0.26"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
