# This Python file uses the following encoding: utf-8
import sys
from PySide2.QtWidgets import QApplication, QMainWindow
from PySide2.QtGui import QIcon
from PyQt5 import QtCore, QtGui, QtWidgets

import mainwindow
import controller.actions
import utils.widget_helper
import utils.qpixel_converter
import baseimage.imagesetter

global_ui = None

class ConvolutionExample():
    def __init__(self):
        global global_ui
        app = QApplication(sys.argv)
        app = QtWidgets.QApplication(sys.argv)
        MainWindow = QtWidgets.QMainWindow()
        ui = mainwindow.Ui_MainWindow()
        global_ui = ui
        utils.widget_helper.global_widget = MainWindow
        ui.setupUi(MainWindow)
        self.initAction(ui)
        utils.widget_helper.global_ce = self
        MainWindow.show()
        sys.exit(app.exec_())
    
    def refreshDisplay(self):
        global global_ui
        if baseimage.imagesetter.isOk():
            print("preparing to refresh graphics view display")
            global_ui.graphicsView.setPixmap(utils.qpixel_converter.convertToQPixel(baseimage.imagesetter.getImageObject()))
        else:
            print("trivial call of refreshDisplay")
    def initAction(self, ui):
        ui.actionShowAbout.triggered.connect(controller.actions.onAboutButtonClicked)
        ui.actionImportImage.triggered.connect(controller.actions.onImportButtonClicked)
        ui.actionExportImage.triggered.connect(controller.actions.onExportButtonClicked)
        self.refreshDisplay()

if __name__ == "__main__":
    ConvolutionExample()
