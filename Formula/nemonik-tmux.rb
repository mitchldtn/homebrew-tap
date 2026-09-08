class NemonikTmux < Formula
  desc "nemonik plugin: managed, re-attachable tmux sessions (nemonik tmux attach/write/read)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.18/nemonik-tmux.zip"
  sha256 "9247a208483ed6191c3de85b3aeef6989da76e1c01ad40495c574758b369dc1a"
  version "0.0.18"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-tmux"
  end

  test do
    system "#{bin}/nemonik-tmux", "--version"
  end
end
