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
import varargs.varargs

global_ui = None

class MorphologicalExample():
    def __init__(self):
        global global_ui
        app = QApplication(sys.argv)
        app = QtWidgets.QApplication(sys.argv)
        MainWindow = QtWidgets.QMainWindow()
        ui = mainwindow.Ui_MainWindow()
        global_ui = ui
        utils.widget_helper.global_widget = MainWindow.centralWidget()
        ui.setupUi(MainWindow)
        self.initAction(ui)
        utils.widget_helper.global_ce = self
        MainWindow.show()
        sys.exit(app.exec_())
    
    def flushIndex(self, index):
        global global_ui
        print("selected feature index: ", index)
        varargs.varargs.operationType = index

    def refreshDisplay(self):
        global global_ui
        if baseimage.imagesetter.isOk():
            print("preparing to refresh graphics view display")
            global_ui.graphicsView.setPixmap(utils.qpixel_converter.convertToQPixel(baseimage.imagesetter.getImageObject()))
        else:
            print("trivial call of refreshDisplay")
            global_ui.graphicsView.clear()

    def forcefullySetKernelSize(self, value):
        global global_ui
        global_ui.kernelSizeSlider.setValue(value)
        global_ui.kernelSizeLabel.setNum(value)
    
    def initAction(self, ui):
        # menu bar stuff
        ui.actionShowAbout.triggered.connect(controller.actions.onAboutButtonClicked)
        ui.actionImportImage.triggered.connect(controller.actions.onImportButtonClicked)
        ui.actionExportImage.triggered.connect(controller.actions.onExportButtonClicked)

        ui.editKernelButton.clicked.connect(controller.actions.editKernelButtonClicked)
        # variable arguments stuff
        # ui.typeSelection.currentIndexChanged.connect(controller.actions.typeChanged)
        # ui.kernelSizeSlider.valueChanged.connect(controller.actions.kernelSliderMoved)
        # ui.kernelSizeSlider.valueChanged.connect(controller.actions.sigmaSliderMoved)

        # operation buttons stuff
        # ui.resetButton.clicked.connect(controller.actions.resetClicked)
        # ui.applyConvolutionButton.clicked.connect(controller.actions.convolutionApplyClicked)
        # ui.applyFilterButton.clicked.connect(controller.actions.filterApplyClicked)
        # idiot stuff
        self.refreshDisplay()

if __name__ == "__main__":
    MorphologicalExample()
