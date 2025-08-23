class Rfp < Formula
  desc "A Rust rewrite of Facebook PathPicker for interactive file selection"
  homepage "https://github.com/psyclaudeZ/rfp"
  url "https://github.com/psyclaudeZ/rfp/releases/download/v0.3.1/rfp-universal-apple-darwin.tar.gz"
  sha256 "979365373c2266aa2b7db3449cd3eff49e4651e56c2c357c353e7966169c7fa2"
  license "MIT"

  depends_on "rust" => :build

  def install
    bin.install "rfp-universal" => "rfp"
  end

  test do
    system "#{bin}/rfp", "--version"
  end
end
