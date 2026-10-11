class Tap < Formula
  desc "An AI-powered command-line interface tool"
  homepage "https://github.com/IcXoen/homebrew-tap"
  url "https://github.com/IcXoen/homebrew-tap/releases/download/v1.0.0/icsnow-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "34bf08c68ed142b9b15f3adce0bfd6913f40ab4ad42c0a8f47126395a27bbcf2"
  license "MIT"

  def install
    # Safely moves the file assets to the staging library tree
    libexec.install Dir["*"]
    
    # Enforce execute permissions on the target script
    chmod 0755, libexec/"icsnow"

    # Create a clean global path link to execute your tool as 'icsnow'
    bin.install_symlink libexec/"icsnow"
  end

  test do
    assert_predicate bin/"icsnow", :exist?
  end
end
