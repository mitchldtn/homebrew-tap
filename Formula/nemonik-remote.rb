class NemonikRemote < Formula
  desc "nemonik plugin: remote-control daemon (nemonik remote daemon/watch)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.18/nemonik-remote.zip"
  sha256 "e93d7f8332620822f322e015565909b484da3e8696a5bfd0cdfa4324c584c8e3"
  version "0.0.18"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-remote"
  end

  test do
    system "#{bin}/nemonik-remote", "--version"
  end
end
