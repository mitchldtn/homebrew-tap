class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.4/nemonik.zip"
  sha256 "98fd39c251a1d1ef07edaa8c04277ff0ec267bdf7f1c75ae0698a3a808f7f9d6"
  version "0.0.4"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
