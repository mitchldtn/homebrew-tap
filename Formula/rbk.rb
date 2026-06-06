class Rbk < Formula
  desc "Terminal with a notes sidebar — run command snippets directly from markdown notes"
  homepage "https://github.com/mitchldtn/rbk"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mitchldtn/rbk/releases/download/v#{version}/rbk-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_AARCH64_SHA256"
    else
      url "https://github.com/mitchldtn/rbk/releases/download/v#{version}/rbk-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_X86_64_SHA256"
    end
  end

  def install
    bin.install "rbk"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rbk --help 2>&1", 1)
  end
end
