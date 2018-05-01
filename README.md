# sox-tricks
Powerful audio organization / editing bash scripts based on the SoX audio tool

This repo is a collection of useful functions you can add to your system to make audio organization from the command line really easy-breezy. 

## Installation
It's a prerequisite that you have sox installed

1. Open up your .bash_profile in a text editor (the file is usually found in your user directory, the full path in osx is ~/.bash_profile) 
2. Copy and paste the contents of the .bash_profile from this repo to the bottom of your own .bash_profile. Make sure not to overwrite anything you already have in there. 
3. Reload your .bash_profile by opening up your terminal and typing `source ~/.bash_profile`

## Usage

##### splitbysilence

`splitbysilence "filename.wav"`

This will take the specified audio file and split it based on the silences in the file. 

The following functions all work on folders of sounds.

##### normdir

Before executing this command you need to move to the folder in question by typing `cd path/to/folder/of/sounds`

Then type `normdir`.

`normdir` normalizes all sounds in a folder to -0.1 db. 

The result is to be found in the directory `converted` in the root of the directory in question.

##### fadedir

Before executing this command you need to move to the folder in question by typing `cd path/to/folder/of/sounds`

Then type `fadedir`

fadedir adds tiny fade ins + outs to all sounds in a folder to remove clicks. 

The result is to be found in the directory `converted` in the root of the directory in question.

##### fadeandnormdir
Before executing this command you need to move to the folder in question by typing `cd path/to/folder/of/sounds`

Then type `fadeandnormdir`

fadeandnormdir adds tiny fade ins + outs to all sounds in a folder to remove clicks and normalizes the sounds to -0.1db. 

The result is to be found in the directory `converted` in the root of the directory in question.
