class Ai < Formula
  desc "An AI-powered command-line interface tool"
  homepage "https://github.com"
  url "https://github.com/releases/download/v1.0.0/AI.tar.gz"
  version "1.0.0" # <--- Adding this explicit version line fixes the error
  sha256 "6e5ad724e4ca4b45fb029a7b8ae33fd59b0e3500aba67f83d587fdcb75c640e7"
  license "MIT"

  def install
    bin.install "AI"
  end

  test do
    system "#{bin}/AI", "--version"
  end
end
