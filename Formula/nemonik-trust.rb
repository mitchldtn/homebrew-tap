class NemonikTrust < Formula
  desc "nemonik plugin: rich browser review views for verify + skill conflicts"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.17/nemonik-trust.zip"
  sha256 "7a5a17edff7828fcecfe5352603e4ed3bfab9e349ed7dc32e4ef6d28f41bbee4"
  version "0.0.17"

  depends_on "nemonik"

  def install
    bin.install "nemonik-trust"
  end

  test do
    system "#{bin}/nemonik-trust", "--version"
  end
end
