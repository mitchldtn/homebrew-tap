class NemonikRemote < Formula
  desc "nemonik plugin: remote-control daemon (nemonik remote daemon/watch)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.24/nemonik-remote.zip"
  sha256 "9692ec254ea296475899af489c11f381fc33ae78f88cfe60ade4dbebbdb0bdf6"
  version "0.0.24"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-remote"
  end

  test do
    system "#{bin}/nemonik-remote", "--version"
  end
end
