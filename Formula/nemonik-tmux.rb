class NemonikTmux < Formula
  desc "nemonik plugin: managed, re-attachable tmux sessions (nemonik tmux attach/write/read)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.16/nemonik-tmux.zip"
  sha256 "9a6c7076935a80ae9ac1c4d64cad2386a99bb71db5b1ca60c26033af1247f5b5"
  version "0.0.16"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-tmux"
  end

  test do
    system "#{bin}/nemonik-tmux", "--version"
  end
end
