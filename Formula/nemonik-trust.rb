class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.21/nemonik-trust.zip"
  sha256 "937857c3e22ac61b37c135db44a7409bd1c4d897a97838fbb581605e6c34f214"
  version "0.0.21"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
