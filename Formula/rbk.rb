class Rbk < Formula
  desc "Terminal with a notes sidebar — run command snippets directly from markdown notes"
  homepage "https://github.com/mitchldtn/rbk"
  version "0.1.3"

  on_macos do
    url "https://github.com/mitchldtn/rbk/releases/download/v#{version}/rbk-aarch64-apple-darwin.tar.gz"
    sha256 "4fbeae5c2a6aeab7b7ba7f391078f80b86dace103b49eebb1286846ce12b9a1b"
  end

  def install
    bin.install "rbk"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rbk --help 2>&1", 1)
  end
end
