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
$sudo mkdir -pv $PREFIX/local/bin/
$sudo cp song -v $PREFIX/local/bin/ 

echo "
this program need ffmpeg and yt-dlp
we need your distro base (if another distro we can not install these auto)
(	1: Debian based
	2: Termux based
	3: Arch based
	4: Void based
	5: OpenSuSe based
	6: Fedora based
	7: CentOS/RHEL based
	8: Gentoo based
	9: Alpine Linux BASED
	A: Pisi based
	*: manual install)
$"
read base
case $base in
	1) $sudo $apt update && $sudo $apt install yt-dlp ffmpeg	;;
	2) termux-setup-storage; $apt update && $apt upgrade; $apt install libexpat openssl python ffmpeg; pip install -U yt-dlp;;
	3) $sudo pacman -Syy yt-dlp ffmpeg				;;
	4) $sudo xbps-install yt-dlp ffmpeg				;;
	5) $sudo zypper install yt-dlp ffmpeg				;;
	6) $sudo dnf install yt-dlp ffmpeg				;;
	7) $sudo yum install yt-dlp ffmpeg				;;
	8) USE="$USE mp3" $sudo emerge --jobs $(nproc) --verbose --ask net-misc/yt-dlp media-video/ffmpeg;;
	9) $sudo apk add yt-dlp ffmpeg					;;
	a|A) $sudo pisi install yt-dlp ffmpeg				;;
	*) exit								;;
esac

}

read -p "do you want install song command ? (y/N) " doinstall 
case $doinstall in  
	y|Y)	install	;;
	n|N)	exit	;;
	*)	exit	;;
esac
