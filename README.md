GifMaker - a simple script to generate gifs from images

This program is just a proof of concept and quality-of-life tool that makes generating gifs simple.

This script depends on ffmpeg being installed to generate the gif from static image files.

To use the script, place images in the sourceImgs folder, and title your images as follows:

   <pattern>-<digit>.<extension>

where <pattern> is the same filename prefix in every image, <digit> is a number that increments sequentially with each progressive image, and <extension> is the file extention for your images.

When you run the script, you will first be prompted for the <pattern> used in your image files, then you will be prompted for the <extension> used for your image files. Using these inputs, ffmpeg outputs the gif into the same folder as the script.