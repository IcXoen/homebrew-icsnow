class Icsnow < Formula
  desc "An AI-powered command-line interface tool"
  homepage "https://github.com"
  # Pulling directly from the designated icsnow/icsnow source location
  url "https://github.com/MochiZip/homebrew-tap/releases/download/v1.0.0/icsnow-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "34bf08c68ed142b9b15f3adce0bfd6913f40ab4ad42c0a8f47126395a27bbcf2"
  license "MIT"

  def install
    # Dynamically checks the unpack directory root and targets your executable file
    bin.install Dir["*"]
  end

  test do
    assert_predicate bin/"icsnow", :exist?
  end
end
