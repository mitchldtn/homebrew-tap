class NemonikRemote < Formula
  desc "nemonik plugin: remote-control daemon (nemonik remote daemon/watch)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.26/nemonik-remote.zip"
  sha256 "1e22f10122c4e4a3936b1e09a8f100a5ad279e0b90efb734a31e72dc6a31c1d5"
  version "0.0.26"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-remote"
  end

  test do
    system "#{bin}/nemonik-remote", "--version"
  end
end
