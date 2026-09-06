class NemonikRemote < Formula
  desc "nemonik plugin: remote-control daemon (nemonik remote daemon/watch)"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.16/nemonik-remote.zip"
  sha256 "0587a04ba03ac4f86678cbbb89ffe1ee6994f8e8e28ad16adb69a9e9982c8d80"
  version "0.0.16"

  depends_on "nemonik"
  depends_on "tmux"

  def install
    bin.install "nemonik-remote"
  end

  test do
    system "#{bin}/nemonik-remote", "--version"
  end
end
