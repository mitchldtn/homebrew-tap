class Rbk < Formula
  desc "Terminal with a notes sidebar — run command snippets directly from markdown notes"
  homepage "https://github.com/mitchldtn/rbk"
  version "0.1.5"

  on_macos do
    url "https://github.com/mitchldtn/rbk/releases/download/v#{version}/rbk-aarch64-apple-darwin.tar.gz"
    sha256 "4b659a958ebbf3e7a62918634bc522b0913a39a18f5e1a344df2a31f137fa11b"
  end

  def install
    bin.install "rbk"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rbk --help 2>&1", 1)
  end
end
