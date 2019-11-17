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


def sobelConvolve(use_personal_filter = False):
    img = baseimage.imagesetter.getImageObject().convert("L")

    imgp = np.asarray( img, dtype="int32" )
    width, height = img.size

    kernel_size = varargs.varargs.kernelSize
 
    newp = ndimage.sobel(imgp)
    newimg = Image.fromarray(np.asarray(np.clip(newp, 0, 255), dtype="uint8"), "L")
    # baseimage.imagesetter.clearImageObject()
    baseimage.imagesetter.setImageObject(newimg)
    utils.widget_helper.global_ce.refreshDisplay()

