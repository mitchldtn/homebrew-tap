class Nemonik < Formula
  desc "Package how your team works into kits you share and refine: the system prompt, skills, MCP servers and hooks for planning, coding and reviewing"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/nemonik/releases/download/v0.0.31/nemonik.zip"
  sha256 "9f64fcdbfd7c5d1cd6ae105d400c728720ca1adedbf24a1678ffa7bac838a214"
  version "0.0.31"

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
