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
        pass
        # global global_ui
        # global_ui.kernelSizeSlider.setValue(value)
        # global_ui.kernelSizeLabel.setNum(value)

    def refreshKernel(self):
        global global_ui
        ksize = varargs.varargs.kernelSize
        if ksize == 3:
            global_ui.threeSizeRadioButton.setChecked(True)
        elif ksize == 5:
            global_ui.fiveSizeRadioButton.setChecked(True)
        elif ksize == 7:
            global_ui.sevenSizeRadioButton.setChecked(True)

    def initAction(self, ui):
        # menu bar stuff
        ui.actionShowAbout.triggered.connect(controller.actions.onAboutButtonClicked)
        ui.actionImportImage.triggered.connect(controller.actions.onImportButtonClicked)
        ui.actionExportImage.triggered.connect(controller.actions.onExportButtonClicked)

        ui.typeSelection.currentIndexChanged.connect(controller.actions.typeChanged)
        ui.editKernelButton.clicked.connect(controller.actions.editKernelButtonClicked)
        ui.previewKernelButton.clicked.connect(controller.actions.previewKernelButtonClicked)

        ui.threeSizeRadioButton.clicked.connect(controller.actions.threeKernelSizeRadioButtonClicked)
        ui.fiveSizeRadioButton.clicked.connect(controller.actions.fiveKernelSizeRadioButtonClicked)
        ui.sevenSizeRadioButton.clicked.connect(controller.actions.sevenKernelSizeRadioButtonClicked)

        ui.applyConvolutionButton.clicked.connect(controller.actions.applyButtonClicked)
        ui.resetButton.clicked.connect(controller.actions.resetClicked)

        self.refreshDisplay()

if __name__ == "__main__":
    MorphologicalExample()
