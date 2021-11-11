# song command
this command is downloads youtube links as mp3 to ~/Music folder

## how to install
```sh
git clone https://github.com/mertoalex/song-cmd.git
cd song-cmd
chmod +x install.sh
./install.sh

##if you install manually youtube-dl and ffmpeg

#arch based
sudo pacman -Syyu youtube-dl ffmpeg

#debian based
sudo apt-get update
sudo apt-get install youtube-dl ffmpeg
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

## how to use
command link
```sh
song {link} [file name]
#example
song https://youtu.be/dQw4w9WgXcQ
#or
song https://youtu.be/dQw4w9WgXcQ cool-song
````
