#!/bin/bash
echo $subtitles
ffmpeg -i $subtitles subtitles.ass
ffmpeg -i $video -vf "subtitles=subtitles.ass" -y /data/output.mp4
if [ $generate_gif = true ] ; then 
    ffmpeg -y -i /data/output.mp4 -vf fps=10,scale=450:-1:flags=lanczos,palettegen palette.png
    ffmpeg -i /data/output.mp4 -i palette.png -t 10 -r 10 -filter_complex "fps=10,scale=450:-1:flags=lanczos[x];[x][1:v]paletteuse" -y /data/output.gif
fi