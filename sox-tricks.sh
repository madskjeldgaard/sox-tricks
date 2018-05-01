########################################################
#               SOX TRICKS
########################################################

# Normalize all sounds in the current directory of sounds 
# 
# Usage: cd to the directory of sounds you want to normalize and then type normdir
#
function normdir(){

    function soxNormFunc(){
        for file in *.$1
        do 
            sox "$file" --norm=-0.1 "converted/normalized_$(basename $file)" -V
        done
    }

    mkdir converted

    soxNormFunc wav
    soxNormFunc WAV
    soxNormFunc mp3
    soxNormFunc aif
    soxNormFunc AIF

    echo "Done normalizing sounds!"
}

# Split audio file by silence
#
# Usage: splitbysilence path/to/sound.wav
#
function splitbysilence(){

    sox $1 $1 silence 1 0.1 1% 1 0.1 1% : newfile : restart

    echo "Done splitting sounds!"

}
