#!/bin/bash

echo -e "This program generates an animated gif from the images stored in the sourceImgs folder. The inputs in this script are case-sensitive. NOTE: HEIC files are not supported by ffmpeg.\n"

echo -e "What is the pattern prefix for your image files?\n"
read PATTERNINPUT
echo $PATTERNINPUT

echo -e "What is the file extension for your image files?\n"
read FILEEXTENSION
echo $FILEEXTENSION

echo -e "At what framerate (frames per second) would you like the gif to be rendered?\n"
read FRAMERATE
echo $FRAMERATE

ffmpeg -framerate ${FRAMERATE} -i ./sourceImgs/${PATTERNINPUT}-%d.${FILEEXTENSION} ${PATTERNINPUT}.gif

exit
