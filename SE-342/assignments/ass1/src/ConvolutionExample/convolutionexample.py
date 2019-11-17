# This Python file uses the following encoding: utf-8
import sys
from PySide2.QtWidgets import QApplication, QMainWindow
from PySide2.QtGui import QIcon
from PyQt5 import QtCore, QtGui, QtWidgets

import mainwindow
import controller.actions
import utils.widget_helper

class ConvolutionExample():
    def __init__(self):
        app = QApplication(sys.argv)
        app = QtWidgets.QApplication(sys.argv)
        MainWindow = QtWidgets.QMainWindow()
        MainWindow.setWindowTitle("SE-342::Convolution Example")
        ui = mainwindow.Ui_MainWindow()
        utils.widget_helper.global_widget = MainWindow
        ui.setupUi(MainWindow)
        self.initAction(ui)
        MainWindow.show()
        sys.exit(app.exec_())
    
    def initAction(self, ui):
        ui.actionShowAbout.triggered.connect(controller.actions.onAboutButtonClicked)

if __name__ == "__main__":
    ConvolutionExample()
