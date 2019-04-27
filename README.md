# Android9PocketDevEnv
Do you need some like on the Integrated Development Environment (IDE) in your pocket? It can be nice if you study the programming at free time. You can programm on your sofa on the weekend, in the long queue, along the lunch break or along the travel from the job to the home. You can obtain it. Just run the script which install the YouCompleteMe Vim plugin into the Arch Linux into the Termux commandline on the Android. Do not need the rooting of the device, but have the pseudo root (by PRoot). It is not the virtual machine.
It is based on [AndroidPocketDevEnv](https://github.com/abicorios/AndroidPocketDevEnv). After update to Android 9 the AndroidPocketDevEnv was broken because TermuxArch was broken https://github.com/sdrausty/TermuxArch/issues/145. This error is not solved, so I found another working Arch distributive, it is [AnLinux](https://github.com/EXALAB/AnLinux-App). Arch of AnLinux has the same error "could not change the root directory", but in this case it is a working distributive. So I made Android9PocketDevEnv based on Arch of AnLinux.
Also, Arch of AnLinux had little trouble on `mirrorlist` and need initialization for the pacman, so I added the default fix. So it is a working tool.

# How to broke your compilation
Android system can automaticaly close Termux, if you switch to another program. So youself need save edited files. Also, do not switch to other program along some compiling, updating, installing, etc. Also, you can enable "wake lock held" option on Push notification of Termux, you can disable control of Termux by Android in settings (disable autoclose), but if Termux is not main app so memory can be limited more and some process (for example compilation) can be crashed. Use Termux as one main open app (no background) is the best solution to do a long compilation. Also, if it is a big trouble, you can use Termux to ssh to server, so Android cannot suppress remote server.

# Dependencies
1. The Android device which can run Termux;
2. The Hacker's Keyboard https://play.google.com/store/apps/details?id=org.pocketworkstation.pckeyboard or https://f-droid.org/en/packages/org.pocketworkstation.pckeyboard/ have the additional keys  (Ctrl, Alt, Esc, etc) like on the keyboard for the desktop. But you must set it from 3 to 5 rows. You can want to stop some console programm by the Ctrl+C, so install this full keyboard before using Ping, for example.
3. The Termux from the GooglePlay https://play.google.com/store/apps/details?id=com.termux or F-Droid https://f-droid.org/en/packages/com.termux/ is the powerfull command line;
4. You must know something about Linux and Vim, so study it in the pure Termux for start. Also, for quit from Vim you must print two symbols, first is :, second is q, and after it press Enter key.
```
:q
```
5. If you need GUI, install and run https://play.google.com/store/apps/details?id=x.org.server
And run 
```
export DISPLAY=:0 PULSE_SERVER=tcp:127.0.0.1:4712
```
# No lightweight using
It is not the lightweight apk application. It is the downloading by network and installing of the Linux operation system, the soft, the libraries and the sources, and compiling the YouCompleteMe source code. So it will cost the disk space (more than **2 GB**) and some time (more than **1 hour**). You must be hardcore human to start it.
# Install
In Termux
```
pkg install git
git clone https://github.com/abicorios/Android9PocketDevEnv
cd Android9PocketDevEnv
bash inst.sh
```

# References
Read more about:

The Vim is the text editor http://www.vim.org/;

The vim-plug is the plugin manager for the Vim https://github.com/junegunn/vim-plug;

The YouCompleteMe is the autocomplete tool to programm in the Vim like on an IDE https://github.com/Valloric/YouCompleteMe
