from PyQt5.QtWidgets import *
from PyQt5.QtCore import Qt, pyqtSignal, pyqtSlot, QTimer
from PySide2.QtWidgets import QFileDialog, QMessageBox
import utils.widget_helper
import baseimage.imagesetter
import baseio.input
import baseio.output
import varargs.varargs
import filters.gaussian
import filters.median
import filters.average
import convolutions.robert
import convolutions.prewitt
import convolutions.sobel

@pyqtSlot()
def onAboutButtonClicked(self):
    QMessageBox.about(utils.widget_helper.global_widget, "關於程式",
    "This is my SE-342 Assignment #1.\n\nBuilt with Python 3.7.4 and Qt 5.13.2.\n\nLicensed under AGPL-3.0.")

@pyqtSlot()
def onImportButtonClicked(self):
    fileName = QFileDialog.getOpenFileName(None, '匯入檔案', '', "圖像檔 (*.jpg *.jpeg *.gif *.png *.bmp);;任何檔案 (*)")
    if len(fileName) >= 1:
        if fileName[0] == '':
            return
        baseio.input.openFile(fileName[0])

@pyqtSlot()
def onExportButtonClicked(self):
    fileName = QFileDialog.getSaveFileName(None, '匯出檔案', '', "JPEG 圖像 (*.jpg);;JPEG 圖像 (*.jpeg);;GIF 圖像 (*.gif);;PNG 圖像 (*.png);;BMP 圖像 (*.bmp);;任意 (*)")
    if len(fileName) >= 1:
        if fileName[0] == '':
            return
        baseio.output.saveFile(fileName[0])

@pyqtSlot()
def typeChanged(index):
    utils.widget_helper.global_ce.flushIndex(index)
    kernelSliderMoved(varargs.varargs.kernelSize)

@pyqtSlot()
def resetClicked(self):
    baseimage.imagesetter.clearImageObject()
    # baseimage.imagesetter.displayIt()
    utils.widget_helper.global_ce.refreshDisplay()

@pyqtSlot()
def kernelSliderMoved(value):
    opCode = varargs.varargs.operationType

    if value % 2 == 0:
        utils.widget_helper.global_ce.forcefullySetKernelSize(value + 1)
        varargs.varargs.kernelSize = value + 1
    else:
        varargs.varargs.kernelSize = value


@pyqtSlot()
def sigmaSliderMoved(value):
    varargs.varargs.sigmaValue = value / 10

@pyqtSlot()
def convolutionApplyClicked(self):
    if not baseimage.imagesetter.isOk():
        utils.prompt.showWarning("Cannot apply convolution since there's no image available.")
        return
    opCode = varargs.varargs.operationType
    if opCode == 0:
        convolutions.robert.robertConvolve()
    elif opCode == 1:
        convolutions.prewitt.prewittConvolve()
    elif opCode == 2:
        convolutions.sobel.sobelConvolve()
    else:
        utils.prompt.showWarning("Invalid convolution operation selected. Try pick another one.")

@pyqtSlot()
def filterApplyClicked(self):
    if not baseimage.imagesetter.isOk():
        utils.prompt.showWarning("Cannot apply filter since there's no image available.")
        return
    opCode = varargs.varargs.operationType
    if opCode == 3:
        filters.gaussian.gaussianFilter()
    elif opCode == 4:
        filters.average.averageFilter()
    elif opCode == 5:
        filters.median.medianFilter()
    else:
        utils.prompt.showWarning("Invalid filtering operation selected. Try pick another one.")