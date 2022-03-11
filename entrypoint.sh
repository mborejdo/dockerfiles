#!/bin/sh -l
cd /github/workspace/data/

mode="$1"
cli="$2"
infile="$3"
outfile="$4"

case "$mode" in
"tex") 
    latexmk -pdf -jobname=$outfile $infile.tex;
    latexmk -c;
    cp $outfile.pdf /github/home;
    ;;
"gh")
    gs -sDEVICE=pngalpha -o $infile.png -r144 $infile.pdf;
    cp $infile.png /github/home;
    ;;
"wcloud")
    wcloud  $cli  --text $infile -o images/$outfile;
    sic -i images/$outfile --hue-rotate 50 --invert --grayscale -o images/$outfile;
    cp images/$outfile /github/home;
    ;;
"sic")
    sic -i images/$infile $cli -o images/$outfile;
    cp images/$outfile /github/home;
    ;;
"tweet")
    wss -e ".twitter-tweet-rendered" file:///github/workspace/data/twitter.html?id=$infile $outfile.png
    sic -i $outfile.png --crop 0 0 570 245 -o $outfile.png
    cp $outfile.png /github/home;
    ;;
*)
    exec bash -c "$@"
    ;;
esac
