class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.24/nemonik.zip"
  sha256 "8a7ce45047eecc90f31ad72b30ae6bfbcb04f650e67e39224a73b1f3551ded5c"
  version "0.0.24"

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
