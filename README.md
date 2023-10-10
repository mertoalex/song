# song script
this script is downloads youtube links as mp3 to ~/Music folder

## donate
[donate link (turkish)](https://kreosus.com/mertoalex) or [this](https://mertoalex.github.io)

## how to install
```sh
git clone https://github.com/mertoalex/song.git
cd song
chmod +x install.sh
./install.sh

##if you install manually yt-dlp and ffmpeg

#arch boi
sudo pacman -Syyu yt-dlp ffmpeg

#debian boi
sudo apt-get update
sudo apt-get install yt-dlp ffmpeg

#void Boi
sudo xbps-install yt-dlp ffmpeg

#openSussye boi
sudo zypper install yt-dlp ffmpeg

#termux boi
apt install ffmpeg yt-dlp python
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
