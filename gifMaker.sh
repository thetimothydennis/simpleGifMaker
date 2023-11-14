#!/bin/bash

echo -e "This program generates an animated gif from the images stored in the sourceImgs folder. The inputs in this script are case-sensitive.\n"

echo -e "What is the pattern prefix for your image files?\n"
read PATTERNINPUT
echo $PATTERNINPUT

echo -e "What is the file extension for your image files?\n"
read FILEEXTENSION
echo $FILEEXTENSION

ffmpeg -i ./sourceImgs/${PATTERNINPUT}-%d.${FILEEXTENSION} ${PATTERNINPUT}.gif

exit
