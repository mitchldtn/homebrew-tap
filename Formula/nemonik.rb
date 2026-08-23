class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.6/nemonik.zip"
  sha256 "351b652adf8919f1d203c7e9f2e939df978b9ad681822d523dbf0ef4de634a86"
  version "0.0.6"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
