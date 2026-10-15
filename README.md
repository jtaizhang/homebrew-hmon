# hmon for Harmony Brew

维护者提供的 hmon 安装源，面向 HarmonyOS PC / HiShell（arm64）。
这是独立 tap，尚非 Harmony Brew 核心仓库收录。

```sh
brew tap jtaizhang/hmon
brew install jtaizhang/hmon/hmon
hmon
```

若出现新 tap 信任提示，请先确认来源为本仓库再按提示继续。
需要预先安装 [Harmony Brew](https://harmonybrew.atomgit.com/)。

```sh
brew upgrade jtaizhang/hmon/hmon
brew test jtaizhang/hmon/hmon
brew uninstall hmon
```

源码、许可证、功能和采集限制见 [jtaizhang/hmon](https://github.com/jtaizhang/hmon)。
配方安装已签名的发行包并验证 SHA-256，不下载或执行额外安装脚本。
