class Rbk < Formula
  desc "Terminal with a notes sidebar — run command snippets directly from markdown notes"
  homepage "https://github.com/mitchldtn/rbk"
  version "0.1.2"

  on_macos do
    url "https://github.com/mitchldtn/rbk/releases/download/v#{version}/rbk-aarch64-apple-darwin.tar.gz"
    sha256 "553c9a8db59f6c32e4324d0e01457c13850082616377a3f0e84312e186fb664b"
  end

  def install
    bin.install "rbk"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rbk --help 2>&1", 1)
  end
end
