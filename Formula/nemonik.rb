class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.3/nemonik.zip"
  sha256 "ce886845fedd7e2bd559d0e9e9d1fafbdcade61f3de6e05de1818e4587f1a71b"
  version "0.0.3"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
