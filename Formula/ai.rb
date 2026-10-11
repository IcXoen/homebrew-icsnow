class Icsnow < Formula
  desc "An AI tool built on open-source code"
  homepage "https://github.com"
  url "https://github.com/releases/download/v1.0.0/icsnow-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "34bf08c68ed142b9b15f3adce0bfd6913f40ab4ad42c0a8f47126395a27bbcf2"
  license "MIT"

  def install
    # Dynamically targets files in the root extract directory
    bin.install Dir["*"]
  end

  test do
    assert_predicate bin/"icsnow", :exist?
  end
end
