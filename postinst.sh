#!/bin/bash
sed -i s/^S/#S/ /etc/pacman.d/mirrorlist
sed -i s/^#\ S/S/ /etc/pacman.d/mirrorlist

#Thank AnLinux
chmod 755 additional.sh
./additional.sh

#https://github.com/EXALAB/AnLinux-App/wiki/Arch-Linux--corrupted-packages-with-invalid-gpg-key
pacman-key --init
pacman-key --populate archlinuxarm

sed -i '$d' .profile
