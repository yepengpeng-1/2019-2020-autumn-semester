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


def GrayScaleReconstruction(mask_img):
    """
    Grayscale Reconstruction.
    Welcome here.
    """
    raw_img = baseimage.imagesetter.getImageObject().convert('RGB')
    mask_img = mask_img.convert('RGB')

    kernel = np.ones((varargs.varargs.kernelSize,
                      varargs.varargs.kernelSize), np.uint8)

    for i in range(varargs.varargs.kernelSize):
        for j in range(varargs.varargs.kernelSize):
            kernel[i][j] = 1 if varargs.varargs.kernelValues[i][j] != 0.0 else 0

    marker = np.array(raw_img)
    mask = np.array(mask_img)

    marker = marker[:, :, ::-1].copy()
    mask = mask[:, :, ::-1].copy()

    last_end = None
#    print("===MARKER===")
#    print(marker)
#    print("===MASK===")
#    print(mask)
    while not (marker == last_end).all():
        last_end = marker
        marker = cv2.dilate(marker, kernel)
        marker = cv2.bitwise_and(marker, mask)

    result = Image.fromarray(marker).convert('L').convert('RGB')
    baseimage.imagesetter.setImageObject(result)
    utils.widget_helper.global_ce.refreshDisplay()
