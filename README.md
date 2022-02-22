# song command
this command is downloads youtube links as mp3 to ~/Music folder

## donate
[donate link (turkish)](https://www.bynogame.com/tr/destekle/mertoalex-bagis)

## how to install
```sh
git clone https://github.com/mertoalex/song-cmd.git
cd song-cmd
chmod +x install.sh
./install.sh

##if you install manually youtube-dl and ffmpeg

#arch boi
sudo pacman -Syyu youtube-dl ffmpeg

#debian boi
sudo apt-get update
sudo apt-get install youtube-dl ffmpeg

#VOID BOI
sudo xbps-install youtube-dl ffmpeg

#openSussye boi
sudo zypper install youtube-dl ffmpeg

#termux boi
pkg install ffmpeg python
pip install youtube-dl
```

## after installition
first test song command
```sh
song
```
if output is
```sh
Err: there is no link!
```
It's installed!

now you can delete song-cmd folder\!\!
```sh
cd ..
rm -rf song-cmd
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
