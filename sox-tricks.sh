########################################################
#               SOX TRICKS
########################################################

# NORMDIR
# Normalize all sounds in the current directory of sounds 
# Usage: cd to the directory of sounds you want to normalize and then type normdir
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

# FADEDIR
# Add small fade ins + outs to all sounds in the current directory of sounds 
# Usage: cd to the directory of sounds you want to add fades to and then type fadedir 
function fadedir(){

    function soxFadeFunc(){
        for file in *.$1
        do 
            sox "$file" "converted/faded_$(basename $file)" -V fade t 0.01 0 0.01
        done
    }

    mkdir converted

    soxFadeFunc wav
    soxFadeFunc WAV
    soxFadeFunc mp3
    soxFadeFunc aif
    soxFadeFunc AIF

    echo "Done adding fades to sounds!"
}

# FADEANDNORMDIR 
# Add small fade ins + outs to all sounds in the current directory of sounds 
# Usage: cd to the directory of sounds you want to add fades to and then type fadeandnormdir
function fadeandnormdir(){

    function soxFadeAndNormFunc(){
        for file in *.$1
        do 
            sox "$file" --norm=-0.1 "converted/fadedandnormalized_$(basename $file)" -V fade t 0.01 0 0.01
        done
    }

    mkdir converted

    soxFadeAndNormFunc  wav
    soxFadeAndNormFunc WAV
    soxFadeAndNormFunc mp3
    soxFadeAndNormFunc aif
    soxFadeAndNormFunc AIF

    echo "Done adding fades to sounds and normalizing them!"
}
# SPLITBYSILENCE
# Split audio file by silence
# Usage: splitbysilence "path/to/sound.wav"
function splitbysilence(){

    sox $1 $1 silence 1 0.1 1% 1 0.1 1% : newfile : restart

    echo "Done splitting sounds!"

}
