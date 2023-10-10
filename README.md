# song script
this script is downloads youtube links as mp3 to ~/Music folder

## donate
[donate link](https://kreosus.com/mertoalex) or [this](https://mertoalex.github.io)

## how to install
```sh
git clone https://github.com/mertoalex/song.git
cd song
chmod +x install.sh
./install.sh

##if you install manually yt-dlp and ffmpeg (replace `sudo` with `doas` if you using `doas`)

#debian boi (replace `apt-get` with `nala` if you using `nala`)
sudo apt-get update
sudo apt-get install yt-dlp ffmpeg

#termux boi (source: https://github.com/yt-dlp/yt-dlp/wiki/Installation#android)
termux-setup-storage
apt-get update && apt-get upgrade
apt-get install libexpat openssl python ffmpeg
pip install -U yt-dlp

#arch boi
sudo pacman -Syy yt-dlp ffmpeg

#void Boi
sudo xbps-install yt-dlp ffmpeg

#openSussye boi
sudo zypper install yt-dlp ffmpeg

#fedora boi
sudo dnf install yt-dlp ffmpeg

#centOS or RHEL boi
sudo yum install yt-dlp ffmpeg

#gentoo Boi
USE="$USE mp3" sudo emerge --jobs $(nproc) --verbose --ask net-misc/yt-dlp media-video/ffmpeg

#Alpine BASED
sudo apk add yt-dlp ffmpeg

#pisi boi
sudo pisi install yt-dlp ffmpeg
```

## after installition
first test song command
```sh
song
```
if output is
```sh
[E]: There is no link!
```
It's installed!

now you can delete song-cmd folder\!\!
```sh
cd ..
rm -rf song
```

## how to use
command link
```sh
song {link} [file name]
#example
song https://youtu.be/dQw4w9WgXcQ
#or
song https://youtu.be/dQw4w9WgXcQ cool-song
````

## Troubleshoting

# song command not found (termux)
you should att `$PREFIX/local/bin` to path
this code makes that
```sh
export SHELL="SHELL_NAME" # replace `SHELL_NAME` with your shell, e.g. bash, zsh, fish, dash, csh etc.
echo -e "\n"'export PATH="$PREFIX/local/bin:$PATH"' >> ~/${SHELL}rc # I think It's work on most shells.
```
