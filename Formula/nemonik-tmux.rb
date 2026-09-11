class NemonikTmux < Formula
  desc "nemonik plugin: managed, re-attachable tmux sessions (nemonik tmux attach/write/read)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.24/nemonik-tmux.zip"
  sha256 "28cceadd576f3e7ed91bdc4616aa0fb6d684b90277b28471ec30a88f1eda85ce"
  version "0.0.24"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-tmux"
  end

  test do
    system "#{bin}/nemonik-tmux", "--version"
  end
end
