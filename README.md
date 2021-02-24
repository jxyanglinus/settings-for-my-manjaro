# settings-for-my-manjaro

## 介绍

这是一些快速配置Manjaro的Shell脚本.

## 安装源配置

1.
```shell
把 Server = https://mirrors.ustc.edu.cn/manjaro/stable/$repo/$arch 
覆盖到 /etc/pacman.d/mirrorlist
```

2.

```shell
把等于号包起来的部分追加到/etc/pacman.conf
==================================
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
==================================
```



3.

```shell
sudo pacman -Syy
```
4.
```shell
sudo pacman -S --noconfirm archlinuxcn-keyring
```
5.
```shell
sudo pacman -Syyu
```



## 使用该项目

在项目的根目录下，有四个脚本

- ``source-and-update.sh`` 第一个脚本:配置软件源并更新，以及安装aur工具
- ``get-apps-and-config.sh`` 第二个脚本:安装各种软件并配置
- ``oh-my-zsh.sh`` 可选:安装zsh并配置Oh My Zsh (颜值超高的shell)
- ``vimplus.sh`` 可选:配置使用VimPlus (一键配置vim, 具体去[vimplus项目地址](https://github.com/chxuan/vimplus)查阅)

其他

- ``myChrome 目录`` 包含谷歌助手插件和Github加速插件, 和一个我的浏览器书签
- ``fcitxConfig, archlinuxcn `` 脚本会调用的文件，不要乱动
- ``vmware-key.txt`` VMware Workstation 15和16的产品密钥

##  脚本会安装的软件

- ``git curl wget openssh vim``
- ``GCC Clang GDB LLDB CMake Make Ninja``
- CLion
- 网易云音乐
- 谷歌chrome浏览器
- VLC 播放器
- Visual Studio Code
- 深度截图
- Typora
- WPS Office
- Monaco 字体
- Neofetch (终端系统信息打印工具(装B神器))
- 360压缩工具 p7zip压缩工具
- GitHub Desktop
- 百度网盘
- 迅雷下载
- ISO Master (iso文件编辑工具)
- VMware Workstation
- 输入法
  - 搜狗输入法
  - 讯飞输入法
- Wine 应用
  - QQ
  - 微信



