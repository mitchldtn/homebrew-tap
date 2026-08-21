class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.2/nemonik.zip"
  sha256 "605f34ce9001ca0ddd53e670e38664636ea4dd6fa8b420d1a61864b3258cafda"
  version "0.0.2"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
