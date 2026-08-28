class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.8/nemonik.zip"
  sha256 "c423e1a7a8e556838159f09adfdf7a7f2f3e8605b76dbab86998b1fa574b516b"
  version "0.0.8"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
