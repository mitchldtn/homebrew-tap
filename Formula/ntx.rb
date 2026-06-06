class Ntx < Formula
  desc "Terminal with a notes sidebar — run command snippets directly from markdown notes"
  homepage "https://github.com/mitchldtn/ntx"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mitchldtn/ntx/releases/download/v#{version}/ntx-aarch64-apple-darwin.tar.gz"
      sha256 "959deb4c642a19e2a1001ee2166cdb6fad84af325596124ffd6f1ee0080b45f7"
    else
      url "https://github.com/mitchldtn/ntx/releases/download/v#{version}/ntx-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_X86_64_SHA256"
    end
  end

  def install
    bin.install "ntx"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ntx --help 2>&1", 1)
  end
end
