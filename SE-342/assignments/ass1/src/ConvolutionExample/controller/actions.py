from PyQt5.QtWidgets import *
from PyQt5.QtCore import Qt, pyqtSignal, pyqtSlot, QTimer
from PySide2.QtWidgets import QFileDialog, QMessageBox
import utils.widget_helper
import baseimage.imagesetter
import baseio.input
import baseio.output

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