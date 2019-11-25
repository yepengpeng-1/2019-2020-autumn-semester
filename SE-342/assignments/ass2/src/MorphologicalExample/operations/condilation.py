import PIL
import cv2
import math
import numpy as np
import varargs.varargs
import scipy.ndimage.filters as fi
import utils.widget_helper
import utils.prompt
import baseimage.imagesetter

from scipy import ndimage
from PIL import Image, ImageFilter

def ConditionalDilation():
    """
    Conditional Dilation.
    Welcome here.
    """
    pil_img = baseimage.imagesetter.getImageObject()

    oc_img = np.array(pil_img) 
    # Convert RGB to BGR 
    oc_img = oc_img[:, :, ::-1].copy() 
    
    kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (varargs.varargs.kernelSize, varargs.varargs.kernelSize))
    
    for i in range(varargs.varargs.kernelSize):
        for j in range(varargs.varargs.kernelSize):
            kernel[i][j] = varargs.varargs.kernelValues[i][j]

    dilated = cv2.dilate(oc_img, kernel)

    # need to convert the color.
    result_img = cv2.cvtColor(dilated, cv2.COLOR_BGR2RGB)
    im_pil = Image.fromarray(result_img)

    baseimage.imagesetter.setImageObject(im_pil)
    utils.widget_helper.global_ce.refreshDisplay()


def ConditionalDilationKits(pil_img):
    """
    Conditional Dilation.
    Welcome here.
    """
    # pil_img = baseimage.imagesetter.getImageObject()

    oc_img = np.array(pil_img) 
    # Convert RGB to BGR 
    oc_img = oc_img[:, :, ::-1].copy() 
    
    kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (varargs.varargs.kernelSize, varargs.varargs.kernelSize))
    
    for i in range(varargs.varargs.kernelSize):
        for j in range(varargs.varargs.kernelSize):
            kernel[i][j] = varargs.varargs.kernelValues[i][j]

    dilated = cv2.dilate(oc_img, kernel)

    # need to convert the color.
    result_img = cv2.cvtColor(dilated, cv2.COLOR_BGR2RGB)
    im_pil = Image.fromarray(result_img)

    # baseimage.imagesetter.setImageObject(im_pil)
    # utils.widget_helper.global_ce.refreshDisplay()
    return im_pil