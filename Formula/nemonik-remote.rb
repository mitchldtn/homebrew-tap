class NemonikRemote < Formula
  desc "nemonik plugin: remote-control daemon (nemonik remote daemon/watch)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.25/nemonik-remote.zip"
  sha256 "44f24a782c17948197bee224fa1b5afb33a2c9d9a530c58eb7b8e516291016ba"
  version "0.0.25"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-remote"
  end

  test do
    system "#{bin}/nemonik-remote", "--version"
  end
end
