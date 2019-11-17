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

def gaussianConvolution(use_personal_filter = False):
    img = baseimage.imagesetter.getImageObject() 
    width, height = img.size

    newimg = PIL.Image.new(img.mode, (width, height))

    kernel_size = varargs.varargs.kernelSize
    sigma_value = varargs.varargs.sigmaValue

    # create nxn zeros
    inp = np.zeros((kernel_size, kernel_size))
    # set element at the middle to one, a dirac delta
    inp[kernel_size // 2, kernel_size // 2] = 1
    # gaussian-smooth the dirac, resulting in a gaussian filter mask
    kernel = fi.gaussian_filter(inp, sigma_value)

    if use_personal_filter:
        ahks = kernel_size // 2
        for w in range(width):
            for h in range(height):
                pixel = img.getpixel((w, h))
                new_pixel = [0] * len(pixel)
                for channel in range(len(pixel)):
                    tot_v = 0.0
                    for i in range(kernel_size):
                        for j in range(kernel_size):
                            x = w - ahks + i
                            y = h - ahks + j
                            if (x < 0 or x >= width) or (y < 0 or y >= height):
                                tot_v += 0.0
                            else:
                                tot_v += img.getpixel((w, h))[channel] * kernel[i][j]
                    new_pixel[channel] = int(tot_v)
                newimg.putpixel((w, h), tuple(new_pixel))
    else:
        truncate_value = (((kernel_size - 1) / 2) - 0.5) / sigma_value
        filtered_data = ndimage.filters.gaussian_filter(img, sigma=sigma_value, truncate=truncate_value)
        newimg = Image.fromarray(filtered_data, img.mode)

    # baseimage.imagesetter.clearImageObject()
    baseimage.imagesetter.setImageObject(newimg)
    utils.widget_helper.global_ce.refreshDisplay()

def __gaussianFunc(x, y):
    topit = (x * x + y * y) / (2 * varargs.varargs.sigmaValue * varargs.varargs.sigmaValue)
    return 1 / (2 * math.pi * varargs.varargs.sigmaValue * varargs.varargs.sigmaValue) * pow(math.e, -topit)
