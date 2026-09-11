class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.23/nemonik.zip"
  sha256 "31b01bed45bb24be404dd5ca4905d0317ff8071105434b41294cdf2fb6f4659f"
  version "0.0.23"

  def install
    bin.install "nemonik"
    # Short alias for day-to-day typing -- both `nemonik` and `nk`
    # resolve to the same binary.
    bin.install_symlink "nemonik" => "nk"
  end

  test do
    system "#{bin}/nemonik", "--version"
    system "#{bin}/nk", "--version"
  end
end
