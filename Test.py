#!/usr/bin/env python

from wand.image import Image
from wand.color import Color
import argparse

# Add command line args for parsing number of columns and rows
parser = argparse.ArgumentParser()
parser.add_argument("TagSize", help="size of the April Tag in m", type=int)
args = parser.parse_args()
print(args)

# Create Random Scribble on image

# Converting first page into PNG
# Scale resolution as size

with Image(filename="./alltags.pdf[0,1]", resolution=300) as img:
     img.format = 'png'
     img.background_color = Color("white")
     img.alpha_channel = 'remove'
     img.save(filename="./temp.png")

     
