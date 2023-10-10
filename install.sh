#!/usr/bin/env bash

function install() {

export sudo="doas"

if ! command -v doas &> /dev/null
then	export sudo="sudo"
	if ! command -v sudo &> /dev/null
	then	export sudo=''
	fi
fi

export apt="nala"

if ! command -v nala &> /dev/null
then	export apt="apt-get"
fi


chmod +x song
$sudo mkdir $PREFIX/local/bin/
$sudo cp song $PREFIX/local/bin/ 

echo "
this program need ffmpeg and yt-dlp
we need your distro base (if another distro we can not install these auto)
(	1: Debian based or termux based
	2: Arch based
	3: Void based
	4: OpenSuSe based
	5: Fedora based
	6: CentOS/RHEL based
	7: Gentoo based
	8: Alpine Linux BASED
	9: Pisi based
	*: manual install)
$"
read base
case $base in
	1) $sudo $apt update && $sudo $apt install yt-dlp ffmpeg	;;
	2) $sudo pacman -Syyu yt-dlp ffmpeg				;;
	3) $sudo xbps-install yt-dlp ffmpeg				;;
	4) $sudo zypper install yt-dlp ffmpeg				;;
	5) $sudo dnf install yt-dlp ffmpeg				;;
	6) $sudo yum install yt-dlp ffmpeg				;;
	7) USE="$USE mp3" $sudo emerge --jobs $(nproc) --verbose --ask net-misc/yt-dlp media-video/ffmpeg;;
	8) $sudo apk add yt-dlp ffmpeg					;;
	9) $sudo pisi install yt-dlp ffmpeg				;;
	*) exit								;;
esac

}

read -p "do you want install song command ? (y/N) " doinstall 
case $doinstall in  
	y|Y)	install	;;
	n|N)	exit	;;
	*)	exit	;;
esac
