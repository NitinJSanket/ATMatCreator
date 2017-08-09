#!/usr/bin/env python

from wand.image import Image
from wand.color import Color

# Add command line args for parsing number of columns and rows

# Create Random Scribble on image

# Converting first page into PNG
with Image(filename="./alltags.pdf[0,1]", resolution=300) as img:
     img.format = 'png'
     img.background_color = Color("white")
     img.alpha_channel = 'remove'
     img.save(filename="./temp.png")

     
