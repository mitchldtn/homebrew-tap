class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.12/nemonik.zip"
  sha256 "120be1a77d168e29208bfcc0ccd18e0901db71ad0700a0bc619abbbe46cca7a4"
  version "0.0.12"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
