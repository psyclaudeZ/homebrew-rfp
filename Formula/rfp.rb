class Rfp < Formula
  desc "A Rust rewrite of Facebook PathPicker for interactive file selection"
  homepage "https://github.com/psyclaudeZ/rfp"
  url "https://github.com/psyclaudeZ/rfp/archive/v0.3.0.tar.gz"
  sha256 "1842a07bf73e7e99935007bbc42ccb1ccb846217fdc8e057fd19a50f1b1d7c84"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/rfp", "--version"
  end
end
