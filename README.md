# sox-tricks
Powerful audio organization / batch editing scripts based on the [SoX audio tool](http://sox.sourceforge.net/)

This repo is a collection of useful functions you can add to your system to make audio organization from the command line really easy-breezy by for example allowing to type one word in the command line to automatically normalize a whole folder of sounds. 

Thanks to [mauro](https://github.com/lvm) it should now be posix / linux compliant. 

## Installation
It's a prerequisite that you have sox installed.

1. Open up a terminal and execute the following command to move to your home directory and download the file of sox-tricks from this repo: `cd ~/ && wget https://raw.githubusercontent.com/datamads/sox-tricks/master/.sox_tricks`

2. Open up your .bash_profile in a text editor (the file is usually found in your user directory, the full path in osx is ~/.bash_profile). If you're trying to find the file in finder on osx and not seeing it in your user directory it's probably because it's hidden and you need to change your folder settings to make invisible files visible. 

3. Add the following command to the bottom of .bash_profile: `source .sox_tricks`. The .bash_profile file is loaded every time you start your terminal and by adding this you add all the sox tricks from this repo to your namespace. 

4. Reload your .bash_profile by opening up your terminal and typing `source ~/.bash_profile` or by restarting. 

## Contribution
This repo is a collective effort. If you have any nice sox tricks and would like to add them, feel free to fork and do a pull request. Only, try to adher to the design pattern for the rest of the scripts to make it easier for everyone. The more, the merrier!

# Usage

If you want to see what's going on while converting / editing your sounds you can add a verbosity flag after the command name, for example like so `normalize -V ...` If not, just ignore the [-V] part of the usage descriptions below. 

---

# Single file operations

## normalize

Normalizes a sound file

Usage: `normalize [-V] "path/to/sound.wav" "path/to/normalized.wav" "amp in dB"`

## fadeinout

Adds a small fade ins + outs to a sound file

Usage: `fadeinout [-V] "path/to/sound.wav" "path/to/fadeinout.wav"`

## splitbysilence 

Split audio file by silence

Usage: `splitbysilence [-V] "path/to/sound.wav"`

## stereo2mono
Convert stereo audio to mono

Usage: `stereo2mono [-V] "path/to/stereo.wav" "path/to/mono.wav"`

## trimsilence

Trim silence from begin and end

Usage: `trimsilence [-V] "path/to/sound.wav" "path/to/trimmed.wav"`

## to4410016
Converts audio to 44100 hz (sample rate) and 16 bits (bit depth)

Usage: `to4410016 [-V] "path/to/sound.wav" "path/to/sound4410016b.wav"`

## voicecleanup
Cleans up voice based audio

Usage: `voicecleanup [-V] "path/to/voice.wav" "path/to/clean.wav"`

---

# Multiple file operations

The multiple file operations all expect you to be in the directory that you want to work on. So before using any of them, make sure you moved to the right directory (but don't be afraid – they're all non-destructive) by typing something like `cd /path/to/folder`. 

## normdir
applies `normalize` to the current directory of sounds

Usage: `normdir`

## fadedir
applies `fadeinout` in the current directory of sounds

Usage: `fadedir`

## splitdir
applies `splitbysilence` in the current directory of sounds

Usage: `splitdir`

## stereo2monodir
applies `stereo2mono` in the current directory of sounds

Usage: `stereo2monodir`

## to4410016dir

applies `to4410016` in the current directory of sounds

Usage: `to4410016dir`

## voicecleanupdir
applies `voicecleanupdir` in the current directory of sounds

Usage: `voicecleanupdir`
