#!/data/data/com.termux/files/usr/bin/bash
pr=`pwd`
cd

#Thank AnLinux
pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Arch/armhf/arch.sh && bash arch.sh

cp $pr/postinst.sh ~/arch-fs/root/postinst.sh
cp $pr/vimrc ~/arch-fs/root/.vimrc
echo './postinst.sh'>>~/arch-fs/root/.profile
sed -i s/C.UTF/en_US.UTF/ start-arch.sh
bash start-arch.sh
