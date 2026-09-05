class Nemonik < Formula
  desc "Login once, launch Claude Code or Codex with a verified nemonik template as a system prompt"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/homebrew-tap/releases/download/v0.0.14/nemonik.zip"
  sha256 "6673b69b3a754603e4969a5429412ffacdc049c93c482a0560c1591e6c234bc5"
  version "0.0.14"

  # Every `nemonik run` is a tmux session (see the CLI README), so
  # tmux is a hard runtime dependency, not optional -- declare it so
  # `brew install` pulls it in for anyone who doesn't already have it.
  depends_on "tmux"

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
