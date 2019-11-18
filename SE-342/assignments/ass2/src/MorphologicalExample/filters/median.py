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
from statistics import median

def medianFilter(use_personal_filter = False):
    img = baseimage.imagesetter.getImageObject() 
    width, height = img.size

    newimg = PIL.Image.new(img.mode, (width, height))

    kernel_size = varargs.varargs.kernelSize

    if use_personal_filter:
        ahks = kernel_size // 2
        for w in range(width):
            for h in range(height):
                pixel = img.getpixel((w, h))
                new_pixel = [0] * len(pixel)
                for channel in range(len(pixel)):
                    prerequisites = []
                    for i in range(kernel_size):
                        for j in range(kernel_size):
                            x = w - ahks + i
                            y = h - ahks + j
                            if (x < 0 or x >= width) or (y < 0 or y >= height):
                                pass
                            else:
                                prerequisites.append(img.getpixel((w, h))[channel] * kernel[i][j])
                    new_pixel[channel] = int(median(prerequisites))
                newimg.putpixel((w, h), tuple(new_pixel))
    else:
        filtered_data = ndimage.filters.median_filter(img, size=kernel_size)
        newimg = Image.fromarray(filtered_data, img.mode)

    # baseimage.imagesetter.clearImageObject()
    baseimage.imagesetter.setImageObject(newimg)
    utils.widget_helper.global_ce.refreshDisplay()
