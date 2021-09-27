#!/bin/bash

read -p "do you want install song command ? (y/N) " install 
case $install in  
	y|Y) eval '
chmod +x song
cat << EOFF
normal linux or termux? 
(*1:linux
  2:termux)
EOFF
read lin
case $lin in
	2) echo you need manual move "song" file to bin ;;
	*) sudo mv song /bin/ ;;
esac
cat << EOFF
this program need ffmpeg and youtube-dl
we need your base distro (if another distro we can not install this auto)
( 1: Arch
  2: Debian
 *3: manual install)
EOFF
read deb
case $deb in
	1) sudo pacman -Syyu youtube-dl ffmpeg ;;
	2) sudo apt-get update && sudo apt-get upgrade && sudo apt-get install youtube-dl ffmpeg ;;
	*) exit				;;
esac
' ;;
	n|N) exit			;;
	*) exit				;;
esac
