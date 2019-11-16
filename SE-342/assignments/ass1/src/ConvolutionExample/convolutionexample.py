# This Python file uses the following encoding: utf-8
import sys
from PySide2.QtWidgets import QApplication, QMainWindow
from PySide2.QtGui import QIcon
from PyQt5 import QtCore, QtGui, QtWidgets

import mainwindow

class ConvolutionExample():
    def __init__(self):
        app = QApplication(sys.argv)
        app = QtWidgets.QApplication(sys.argv)
        MainWindow = QtWidgets.QMainWindow()
        ui = mainwindow.Ui_MainWindow()
        ui.setupUi(MainWindow)
        MainWindow.show()
        sys.exit(app.exec_())

if __name__ == "__main__":
    ConvolutionExample()
