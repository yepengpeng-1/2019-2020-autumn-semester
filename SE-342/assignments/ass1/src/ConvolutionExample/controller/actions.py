from PyQt5.QtWidgets import *
from PyQt5.QtCore import Qt, pyqtSignal, pyqtSlot, QTimer

import utils.widget_helper

@pyqtSlot()
def onAboutButtonClicked(self):
    QMessageBox.about(utils.widget_helper.global_widget, "關於程式",
    "This is my SE-342 Assignment #1.\n\nBuilt with Python 3.7.4 and Qt 5.13.2.\n\nLicensed under AGPL-3.0.")
