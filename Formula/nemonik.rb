class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.26/nemonik.zip"
  sha256 "1cabff2f648a2749a3e657b0692bdee4b7273430af58d1bd7bb916071614d4bb"
  version "0.0.26"

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
