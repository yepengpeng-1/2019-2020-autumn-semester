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
    raw_img = baseimage.imagesetter.getImageObject()