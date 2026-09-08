class NemonikTmux < Formula
  desc "nemonik plugin: managed, re-attachable tmux sessions (nemonik tmux attach/write/read)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.19/nemonik-tmux.zip"
  sha256 "f5316c30e964d44ab1449308e696cf10e512fc47ad0d5bca0bd2ec152f3045fb"
  version "0.0.19"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-tmux"
  end

  test do
    system "#{bin}/nemonik-tmux", "--version"
  end
end
