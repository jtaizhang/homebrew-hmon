class Hmon < Formula
  desc "Terminal CPU, memory and temperature monitor for HarmonyOS PC"
  homepage "https://github.com/jtaizhang/hmon"
  url "https://github.com/jtaizhang/hmon/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "42ee464c5e44dbc76bfca707597348729ec33a886a6aaa84ed2108f8df138012"
  license "MIT"

  def install
    system "make"
    libexec.install "hmon", "build/hmon-core"
    chmod 0755, libexec/"hmon"
    bin.install_symlink libexec/"hmon"
    doc.install "README.md", "docs/USAGE.txt", "CHANGELOG.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hmon --version")
    assert_match "PASS", shell_output("#{bin}/hmon --self-test")
  end
end
