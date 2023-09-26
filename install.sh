#!/bin/bash

read -p "do you want install song command ? (y/N) " install 
case $install in  
	y|Y) eval '
chmod +x song
echo "
normal linux or termux? 
(*1:linux
  2:termux)
$"
read lin
case $lin in
	2) echo you need manual move "song" file to bin ;;
	*) sudo mv song /usr/bin/ ;;
esac
echo "
this program need ffmpeg and yt-dlp
we need your base distro (if another distro we can not install this auto)
( 1: Arch
  2: Debian
  3: Void
  4: openSuSe
 *5: manual install)
$"
read deb
case $deb in
	1) sudo pacman -Syyu yt-dlp ffmpeg ;;
	2) sudo apt-get update && sudo apt-get install yt-dlp ffmpeg ;;
	3) sudo xbps-install yt-dlp ffmpeg ;;
	4) sudo zypper install yt-dlp ffmpeg ;;
	*) exit				;;
esac
' ;;
	n|N) exit			;;
	*) exit				;;
esac
