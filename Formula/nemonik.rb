class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.1/nemonik.zip"
  sha256 "37fbf0c4509c86ddc14b4d224ea704ded2c55ad76562842217876ff8b57a7457"
  version "0.0.1"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
