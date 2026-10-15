# hmon for Harmony Brew

维护者提供的 hmon 安装源，面向 HarmonyOS PC / HiShell（arm64）。
这是独立 tap，尚非 Harmony Brew 核心仓库收录。

```sh
brew tap jtaizhang/hmon https://github.com/jtaizhang/homebrew-hmon.git
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
配方优先安装已签名的 arm64 OHOS bottle 并验证 SHA-256，普通安装无需本机编译器。
0.2.7 已在鸿蒙 7.0 PC 上通过 Brew 安装、70 项程序自检和实际采集验证。

`brew test` 属于开发者测试，可能需要额外的 Ruby 测试依赖及编译工具；
普通用户可运行 `hmon --self-test` 检查已安装程序。
