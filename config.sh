#!/bin/bash
echo "下载Vundle插件到~/.vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "下载myvim到用户根目录下"
git clone https://github.com/zhaopei0418/myvim.git ~/myvim

echo "复制vimrc到根目录下的.vimrc"
cp ~/myvim/vimrc ~/.vimrc

echo "启动vim安装插件"
vim -c 'BundleInstall' -c 'qa'

echo "安装vimrc完成"
