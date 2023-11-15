#!/bin/bash

echo -e "\n~~~~~~~ Easy Gif Maker ~~~~~~~\n"

echo -e "\nThis program generates an animated gif from the images stored in the sourceImgs folder. The inputs in this script are case-sensitive. NOTE: HEIC files are not supported by ffmpeg.\n"

echo -e "\nWhat is the pattern prefix for your image files?\n"
read PATTERNINPUT
echo -e "\nYou input" $PATTERNINPUT

echo -e "\nWhat is the file extension for your image files?\n"
read FILEEXTENSION
echo -e "\nYou input" $FILEEXTENSION

echo -e "\nAt what framerate (frames per second) would you like the gif to be rendered?\n"
read FRAMERATE
echo -e "\nYou input" $FRAMERATE

ffmpeg -framerate ${FRAMERATE} -i ./sourceImgs/${PATTERNINPUT}-%d.${FILEEXTENSION} ${PATTERNINPUT}.gif

echo -e "\nCreated "$PATTERNINPUT".gif at "$FRAMERATE" frames per second.\n"

exit
