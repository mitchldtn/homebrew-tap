class NemonikTmux < Formula
  desc "nemonik plugin: managed, re-attachable tmux sessions (nemonik tmux attach/write/read)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.26/nemonik-tmux.zip"
  sha256 "fcb8b5fa53780ee6009bfaea290a88c9a9d8374ebd40748dc2e416f4e5c2f818"
  version "0.0.26"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-tmux"
  end

  test do
    system "#{bin}/nemonik-tmux", "--version"
  end
end
