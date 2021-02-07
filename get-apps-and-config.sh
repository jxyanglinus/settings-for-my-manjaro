#!/bin/bash

echo "=====开始配置====="

# 安装命令
pacmanInst='sudo pacman -S --noconfirm'
yayInst='yay -S --noconfirm'

# 各种软件包
pacman_pkgs='gcc clang gdb lldb cmake make ninja vim git wget curl openssh p7zip clion clion-cmake clion-gdb clion-lldb clion-jre neofetch ttf-monaco netease-cloud-music ttf-wps-fonts libwps typora google-chrome visual-studio-code-bin vlc deepin-screenshot'
yay_pkgs='360zip github-desktop wps-office-cn wps-office-mui-zh-cn baidunetdisk-bin xunlei-bin isomaster'

#######安装VMware Workstation#######
function VMware(){
    # 依赖
    $pacmanInst fuse2 gtkmm  pcsclite libcanberra
    uname -r # 内核信息
    sudo pacman -S linux-headers # 根据上面的内核信息选择linux-headers的版本
    $yayInst ncurses5-compat-libs
    # VMware Workstation
    $yayInst vmware-workstation
    # 启动服务
    sudo modprobe -a vmw_vmci vmmon
    sudo systemctl enable vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service
    sudo systemctl start  vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service
}

#######安装中文输入法#######
function chineseInput(){
    $pacmanInst fcitx-im
    $pacmanInst fcitx-configtool
    $yayInst iflyime
    $yayInst fcitx-sogoupinyin
    sudo cat ./fcitxConfig > ~/.xprofile
}

#######Wine应用#######
function wineApps(){
    echo '安装wine应用后, 如果不能正常运行, 可以尝试 "$ RunScript -d" 运行'
    echo '其中 $ RunScript 指 wine 应用的运行脚本, 一般是 /opt/apps/com.deepin.***/files/run.sh'
    $yayInst deepin-wine-wechat deepin-wine-qq
    $pacmanInst xsettingsd
}

#######主安装函数#######
function instMain(){
    $pacmanInst "$pacman_pkgs"
    $yayInst "$yay_pkgs"
    VMware
    chineseInput
    wineApps
}

instMain