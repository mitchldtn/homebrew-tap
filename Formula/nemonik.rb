class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.10/nemonik.zip"
  sha256 "613c7596bb4a92733aa913717d88a487432028dc96be56a843e6b5178135ad73"
  version "0.0.10"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
