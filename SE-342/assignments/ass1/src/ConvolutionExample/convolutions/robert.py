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

__roberts_cross_v = np.array( [[ 0, 0, 0 ],
                             [ 0, 1, 0 ],
                             [ 0, 0,-1 ]] )

__roberts_cross_h = np.array( [[ 0, 0, 0 ],
                             [ 0, 0, 1 ],
                             [ 0,-1, 0 ]] )

def robertConvolve(use_personal_filter = False):
    img = baseimage.imagesetter.getImageObject().convert("L")

    imgp = np.asarray( img, dtype="int32" )
    
    # width, height = img.size

    # kernel_size = varargs.varargs.kernelSize
 
    vertical = ndimage.convolve( imgp, __roberts_cross_v )
    horizontal = ndimage.convolve( imgp, __roberts_cross_h )

    newp = np.sqrt( np.square(horizontal) + np.square(vertical))
    newimg = Image.fromarray(np.asarray(np.clip(newp, 0, 255), dtype="uint8"), "L")

    # baseimage.imagesetter.clearImageObject()
    baseimage.imagesetter.setImageObject(newimg)
    utils.widget_helper.global_ce.refreshDisplay()

