#!/bin/bash

VIMPLUS_GIT='https://github.com.cnpmjs.org/chxuan/vimplus.git'

git clone $VIMPLUS_GIT ~/.vimplus
cd ~/.vimplus || { echo "没有这个目录，是项目克隆失败了吗?"; exit 1; }
sh ./install.sh