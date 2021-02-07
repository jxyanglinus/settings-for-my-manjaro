#!/bin/bash

echo "=======开始配置======="

inst='sudo pacman -S --noconfirm'
APPSOURCE='https://mirrors.ustc.edu.cn/manjaro/stable/$repo/$arch'

# 安装源
echo "是否更新软件源?(如果先前更新过了，可以不做这一步)[y/n]"
read -r update

if [ "$update" == "y" ];then
    sudo echo "Server = $APPSOURCE" > /etc/pacman.d/mirrorlist
    sudo cat ./archlinuxcn >> /etc/pacman.conf
    sudo pacman -Syy
    $inst archlinuxcn-keyring
else
    echo "你取消了更新软件源"
fi

# 一键更新
sudo pacman -Syyu

# AUR
$inst base-devel
$inst yay yaourt

echo "完成后请重启"