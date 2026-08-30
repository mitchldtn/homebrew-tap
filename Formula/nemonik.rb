class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.9/nemonik.zip"
  sha256 "e80a6c640f5fad8b9f0c1002eb93f9614e5e4eff32079d8a55b3933eb69939f9"
  version "0.0.9"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
