#!/bin/bash
sed -i '$d' .profile
sed -i s/^S/#S/ /etc/pacman.d/mirrorlist
sed -i s/^#\ S/S/ /etc/pacman.d/mirrorlist
#sed -i s/populate\ archlinux$/populate\ archlinuxarm/

#Thank AnLinux
chmod 755 additional.sh
./additional.sh

#https://github.com/EXALAB/AnLinux-App/wiki/Arch-Linux--corrupted-packages-with-invalid-gpg-key
pacman-key --init
pacman-key --populate archlinuxarm

echo 'set -o vi'>>.profile
pacman -Syyu --noconfirm --needed base-devel cmake python python2 clang vim git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#cp vimrc .vimrc
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --system-libclang
cd
rm -f postinst.sh
rm -f additional.sh
