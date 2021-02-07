# settings-for-my-manjaro

## 介绍

这是一些快速配置Manjaro的Shell脚本.

## 安装源配置

```sh
sudo pacman-mirrors -i -c China -m rank
```

然后把下面内容粘贴到``/etc/pacman.conf``

```sh
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
```

接着刷新一下

```sh
sudo pacman -Syy
```

## 使用该项目

安装Git

```sh
sudo pacman -S git
```

克隆这个项目

```sh
git clone https://github.com/linus13y/settings-for-my-manjaro.git
```

进入项目的根目录, 然后

```sh
sh ./settingsForManjaro.sh
```

The end...

