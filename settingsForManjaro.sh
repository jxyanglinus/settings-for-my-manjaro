#!/bin/bash

echo "=====开始配置====="

# 安装源
sudo pacman-mirrors -i -c China -m rank
sudo cat ./archlinuxcn >> /etc/pacman.conf
sudo pacman -Syy

# 一键更新
sudo pacman -Syyu

# AUR
sudo pacman -S base-devel
sudo pacman -S yay
sudo pacman -S yaourt

# 输入法
sudo pacman -S fcitx-im
sudo pacman -S fcitx-configtool
yay -S iflyime
sudo cat ./fcitxConfig > ~/.xprofile

# 常用软件
sudo pacman -S gcc clang gdb lldb cmake make ninja vim git wget curl openssh # 基本的工具
sudo pacman -S ttf-monaco # Monaco 字体
sudo pacman -S netease-cloud-music # 网易云音乐
sudo pacman -S ttf-wps-fonts libwps # WPS Office 依赖
sudo pacman -S typora # Markdown 文档编辑器
sudo pacman -S google-chrome # 谷歌浏览器
sudo pacman -S visual-studio-code-bin # VSCode
sudo pacman -S vlc # VLC 播放器
sudo pacman -S deepin-screenshot # 深度截图
# =====VirtualBox=====
uname -r # 确认内核信息
sudo pacman -S virtualbox # 这需要选择内核模块, 根据刚才的内核版本选择
sudo pacman -S virtualbox-ext-oracle # 安装扩展包
sudo gpasswd -a $USER vboxusers # 添加当前用户到vboxusers
sudo modprobe vboxdrv # 激活VirtualBox
# =====The End...=====
yay -S 360zip # 360压缩
yay -S github-desktop # GitHub Desktop
yay -S wps-office-cn # WPS Office 本尊

# 美化
echo "=====美化(跟多需要手动配置)====="
echo "- 完成后记得重启"
sudo pacman -S latte-dock # 类似macOS的Dock栏
# =====oh-my-zsh=====
sudo pacman -S zsh # Zsh
chsh -s /usr/bin/zsh # 设置zsh为默认终端
sh ./ohmyzsh.sh # 配置Oh My Zsh
# =====The End...=====