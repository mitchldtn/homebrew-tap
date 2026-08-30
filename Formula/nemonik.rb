class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.11/nemonik.zip"
  sha256 "47eb3052f6b78c671b2590103f03a30df0f13486eaa03664fc4da1d3b7f84822"
  version "0.0.11"

  def install
    bin.install "nemonik"
  end

  test do
    system "#{bin}/nemonik", "--version"
  end
end
