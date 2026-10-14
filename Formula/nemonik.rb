class Nemonik < Formula
  desc "Package how your team works into kits you share and refine: the system prompt, skills, MCP servers and hooks for planning, coding and reviewing"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/nemonik/releases/download/v0.0.29/nemonik.zip"
  sha256 "65d4284c1b57ec6f4abcc4f9c9c9777d2111d28edd7bf08b73ea0c0b13a179ba"
  version "0.0.29"

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
