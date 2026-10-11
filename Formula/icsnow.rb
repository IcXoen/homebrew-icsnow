class Icsnow < Formula
  desc "An AI-powered command-line interface tool"
  homepage "https://github.com/MochiZip/homebrew-tap"
  url "https://github.com/MochiZip/homebrew-tap/releases/download/v1.0.0/icsnow-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "34bf08c68ed142b9b15f3adce0bfd6913f40ab4ad42c0a8f47126395a27bbcf2"
  license "MIT"

  # Declaring necessary system dependencies
  depends_on "node"
  depends_on "python@3.11"

  def install
    # 1. Safely isolates the 217 files into a background library directory
    libexec.install Dir["*"]

    # 2. Ensures the main script file has executable permission flags on the target Mac
    # (Fixes "Permission Denied" or "No such file or directory" bugs on remote machines)
    chmod 0755, libexec/"icsnow"

    # 3. Creates a clean global terminal script wrapper with environment paths mapped perfectly
    (bin/"icsnow").write_env_script libexec/"icsnow", :PATH => "#{Formula["node"].opt_bin}:#{Formula["python@3.11"].opt_bin}:$PATH"
  end

  test do
    assert_predicate bin/"icsnow", :exist?
  end
end
