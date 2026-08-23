class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.5/nemonik.zip"
  sha256 "704c5fd476f2a5e8c94da25932c4f6e78166d83d049f34d938f9af1119f3e46f"
  version "0.0.5"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
