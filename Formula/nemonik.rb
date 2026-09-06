class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.16/nemonik.zip"
  sha256 "49088eca2b19717ae65f39aad1f663b7e8e226fe77e1796ba1d33d9b7f2364de"
  version "0.0.16"

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
