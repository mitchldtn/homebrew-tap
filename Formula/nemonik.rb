class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.13/nemonik.zip"
  sha256 "fe335d48f058f5bab982b1d26f7bf4374ab52fd5131537c6baeec7616e729304"
  version "0.0.13"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
