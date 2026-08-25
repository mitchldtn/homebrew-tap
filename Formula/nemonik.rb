class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.7/nemonik.zip"
  sha256 "70bf453d17719e34c44f595e68c9f4be5bbe5b12fcc64feb9784ca9ef5069002"
  version "0.0.7"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
