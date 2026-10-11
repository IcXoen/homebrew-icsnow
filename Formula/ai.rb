class Ai < Formula
  desc "An AI-powered command-line interface tool"
  homepage "https://github.com/MochiZip/homebrew-tap"
  url "https://github.com"
  sha256 "6e5ad724e4ca4b45fb029a7b8ae33fd59b0e3500aba67f83d587fdcb75c640e7"
  license "MIT"

  def install
    bin.install "AI"
  end

  test do
    system "#{bin}/AI", "--version"
  end
end
