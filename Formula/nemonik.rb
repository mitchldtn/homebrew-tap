class Nemonik < Formula
  desc "Package how your team works into kits you share and refine: the system prompt, skills, MCP servers and hooks for planning, coding and reviewing"
  homepage "https://nemonik.io"
  url "https://github.com/mitchldtn/nemonik/releases/download/v0.0.30/nemonik.zip"
  sha256 "6a0c9abae9f44806e145900524a4162bc4b538f6b072cc26b924ab1cbc4f98e7"
  version "0.0.30"

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
