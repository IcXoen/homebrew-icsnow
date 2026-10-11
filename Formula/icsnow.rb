class Icsnow < Formula
  desc "An AI-powered command-line interface tool"
  homepage "https://github.com/IcXoen/homebrew-tap"
  url "https://github.com/IcXoen/homebrew-tap/releases/download/v1.0.0/icsnow-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "34bf08c68ed142b9b15f3adce0bfd6913f40ab4ad42c0a8f47126395a27bbcf2"
  license "MIT"

  # Core runtime configurations
  depends_on "node"
  depends_on "python@3.11"

  def install
    # Safely isolates the source files into a background library folder
    libexec.install Dir["*"]

    # Enforces executable flags for clean cross-machine installations
    chmod 0755, libexec/"icsnow"

    # Creates a globally accessible terminal command wrapper
    (bin/"icsnow").write_env_script libexec/"icsnow", :PATH => "#{Formula["node"].opt_bin}:#{Formula["python@3.11"].opt_bin}:$PATH"
  end

  test do
    assert_predicate bin/"icsnow", :exist?
  end
end
