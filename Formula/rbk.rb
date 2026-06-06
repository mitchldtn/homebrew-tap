class Rbk < Formula
  desc "Terminal with a notes sidebar — run command snippets directly from markdown notes"
  homepage "https://github.com/mitchldtn/rbk"
  version "0.1.4"

  on_macos do
    url "https://github.com/mitchldtn/rbk/releases/download/v#{version}/rbk-aarch64-apple-darwin.tar.gz"
    sha256 "b5367ec987dba4e548d98ef19aa3a89f08ed0e28ef187bce3ef1754a1942608c"
  end

  def install
    bin.install "rbk"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rbk --help 2>&1", 1)
  end
end
