import cv2
import PIL
import math
import numpy as np
import varargs.varargs
import scipy.ndimage.filters as fi
import utils.widget_helper
import utils.prompt
import baseimage.imagesetter

from scipy import ndimage
from PIL import Image, ImageFilter

def MorphologicalGradient():
    """
    Morphological Gradient.
    Welcome here.
    """
    raw_img = baseimage.imagesetter.getImageObject().convert('RGB')
    width, height = raw_img.size
    new_img = PIL.Image.new(raw_img.mode, (width, height))

    for x in range(width):
        for y in range(height):
            if y > 0:
                pixel_up = raw_img.getpixel((x, y - 1))
            else:
                pixel_up = raw_img.getpixel((x, y + 1))

            if x > 0:
                pixel_left = raw_img.getpixel((x - 1, y))
            else:
                pixel_left = raw_img.getpixel((x + 1, y))

            pixel = raw_img.getpixel((x, y))
            channel_c = len(pixel)
            new_pixel = [0] * channel_c
            for channel in range(channel_c):
                diff_x = pixel[channel] - pixel_up[channel]
                diff_y = pixel[channel] - pixel_left[channel]
                grad = math.sqrt(diff_x ** 2 + diff_y ** 2)
                new_pixel[channel] = int(grad)
            new_img.putpixel((x, y), tuple(new_pixel))

    baseimage.imagesetter.setImageObject(new_img)
    utils.widget_helper.global_ce.refreshDisplay()