class Hmon < Formula
  desc "Terminal CPU, memory and temperature monitor for HarmonyOS PC"
  homepage "https://github.com/jtaizhang/hmon"
  url "https://github.com/jtaizhang/hmon/releases/download/v0.2.7/hmon-0.2.7-harmonyos-arm64.tar.gz"
  sha256 "a87b1b7da23a28e65a45918207e67b5e994542f84ac5af8c32f648df6c935c90"
  license "MIT"

  depends_on arch: :arm64

  def install
    odie "hmon requires Harmony Brew on HarmonyOS PC (HiShell)" unless OS.respond_to?(:ohos?) && OS.ohos?

    # Keep the HiShell launcher with its signed core. Never strip the ELF here.
    libexec.install "hmon", "hmon-core"
    chmod 0755, libexec/"hmon"
    chmod 0755, libexec/"hmon-core"
    bin.install_symlink libexec/"hmon"
    doc.install "README.md", "USAGE.txt", "CHANGELOG.md"
  end

  def caveats
    <<~EOS
      Run hmon from native HarmonyOS PC HiShell.
      GPU memory is available where exposed; GPU load, fan RPM and NPU
      metrics may be unavailable due to device permissions.
      Press v to change views and t to show/hide the process list.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hmon --version")
    assert_match "PASS", shell_output("#{bin}/hmon --self-test")
  end
end
