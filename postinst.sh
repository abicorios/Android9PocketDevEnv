#!/bin/bash
sed -i '$d' .profile
sed -i s/^S/#S/ /etc/pacman.d/mirrorlist
sed -i s/^#\ S/S/ /etc/pacman.d/mirrorlist

#Thank AnLinux
chmod 755 additional.sh
./additional.sh

#https://github.com/EXALAB/AnLinux-App/wiki/Arch-Linux--corrupted-packages-with-invalid-gpg-key
pacman-key --init
pacman-key --populate archlinuxarm

pacman -Syyu --noconfirm
echo 'set -o vi'>>.profile
pacman -Syu --noconfirm --needed base-devel cmake python python2 clang vim
echo "if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-complete --system-libclang' }
call plug#end()                                         " >> .vimrc
vim -c PlugInstall -c qa
rm -f postinst.sh