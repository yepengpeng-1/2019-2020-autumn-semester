from PyQt5.QtWidgets import QDialog
from PyQt5.QtCore import Qt, pyqtSignal, pyqtSlot, QTimer
from PySide2.QtWidgets import QFileDialog, QMessageBox
import utils.widget_helper
import baseimage.imagesetter
import baseio.input
import baseio.output
import varargs.varargs
# import filters.gaussian
# import filters.median
# import filters.average
# import convolutions.robert
# import convolutions.prewitt
# import convolutions.sobel
import kerneleditor

@pyqtSlot()
def onAboutButtonClicked(self):
    QMessageBox.about(utils.widget_helper.global_widget, "關於程式",
    "This is my SE-342 Assignment #2.\n\nBuilt with Python 3.7.4 and Qt 5.13.2.\n\nLicensed under AGPL-3.0.")

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

@pyqtSlot()
def resetClicked(self):
    baseimage.imagesetter.clearImageObject()
    # baseimage.imagesetter.displayIt()
    utils.widget_helper.global_ce.refreshDisplay()

@pyqtSlot()
def editKernelButtonClicked(self):
    Dialog = QDialog()
    utils.widget_helper.global_dialog_handler = Dialog
    ui = kerneleditor.Ui_Dialog()
    utils.widget_helper.global_dialog = ui
    ui.setupUi(Dialog)

    ui.okButton.clicked.connect(pressOkButton)
    ui.cancelButton.clicked.connect(pressCancelButton)
    ui.resetButton.clicked.connect(pressResetButton)

    ksize = varargs.varargs.kernelSize

    if ksize == 3:
        ui.tabWidget.setCurrentIndex(0)
        utils.widget_helper.global_dialog.spin3_1.setValue(varargs.varargs.kernelValues[0][0])
        utils.widget_helper.global_dialog.spin3_2.setValue(varargs.varargs.kernelValues[0][1])
        utils.widget_helper.global_dialog.spin3_3.setValue(varargs.varargs.kernelValues[0][2])
        utils.widget_helper.global_dialog.spin3_4.setValue(varargs.varargs.kernelValues[1][0])
        utils.widget_helper.global_dialog.spin3_5.setValue(varargs.varargs.kernelValues[1][1])
        utils.widget_helper.global_dialog.spin3_6.setValue(varargs.varargs.kernelValues[1][2])
        utils.widget_helper.global_dialog.spin3_7.setValue(varargs.varargs.kernelValues[2][0])
        utils.widget_helper.global_dialog.spin3_8.setValue(varargs.varargs.kernelValues[2][1])
        utils.widget_helper.global_dialog.spin3_9.setValue(varargs.varargs.kernelValues[2][2])
    elif ksize == 5:
        ui.tabWidget.setCurrentIndex(1)
        utils.widget_helper.global_dialog.spin5_1.setValue(varargs.varargs.kernelValues[0][0])
        utils.widget_helper.global_dialog.spin5_2.setValue(varargs.varargs.kernelValues[0][1])
        utils.widget_helper.global_dialog.spin5_3.setValue(varargs.varargs.kernelValues[0][2])
        utils.widget_helper.global_dialog.spin5_4.setValue(varargs.varargs.kernelValues[0][3])
        utils.widget_helper.global_dialog.spin5_5.setValue(varargs.varargs.kernelValues[0][4])
        utils.widget_helper.global_dialog.spin5_6.setValue(varargs.varargs.kernelValues[1][0])
        utils.widget_helper.global_dialog.spin5_7.setValue(varargs.varargs.kernelValues[1][1]) 
        utils.widget_helper.global_dialog.spin5_8.setValue(varargs.varargs.kernelValues[1][2]) 
        utils.widget_helper.global_dialog.spin5_9.setValue(varargs.varargs.kernelValues[1][3])
        utils.widget_helper.global_dialog.spin5_10.setValue(varargs.varargs.kernelValues[1][4])
        utils.widget_helper.global_dialog.spin5_11.setValue(varargs.varargs.kernelValues[2][0])
        utils.widget_helper.global_dialog.spin5_12.setValue(varargs.varargs.kernelValues[2][1])
        utils.widget_helper.global_dialog.spin5_13.setValue(varargs.varargs.kernelValues[2][2])
        utils.widget_helper.global_dialog.spin5_14.setValue(varargs.varargs.kernelValues[2][3])
        utils.widget_helper.global_dialog.spin5_15.setValue(varargs.varargs.kernelValues[2][4])
        utils.widget_helper.global_dialog.spin5_16.setValue(varargs.varargs.kernelValues[3][0])
        utils.widget_helper.global_dialog.spin5_17.setValue(varargs.varargs.kernelValues[3][1])
        utils.widget_helper.global_dialog.spin5_18.setValue(varargs.varargs.kernelValues[3][2])
        utils.widget_helper.global_dialog.spin5_19.setValue(varargs.varargs.kernelValues[3][3])
        utils.widget_helper.global_dialog.spin5_20.setValue(varargs.varargs.kernelValues[3][4])
        utils.widget_helper.global_dialog.spin5_21.setValue(varargs.varargs.kernelValues[4][0])
        utils.widget_helper.global_dialog.spin5_22.setValue(varargs.varargs.kernelValues[4][1])
        utils.widget_helper.global_dialog.spin5_23.setValue(varargs.varargs.kernelValues[4][2])
        utils.widget_helper.global_dialog.spin5_24.setValue(varargs.varargs.kernelValues[4][3])
        utils.widget_helper.global_dialog.spin5_25.setValue(varargs.varargs.kernelValues[4][4])
    elif ksize == 7:
        ui.tabWidget.setCurrentIndex(2)
        utils.widget_helper.global_dialog.spin7_1.setValue(varargs.varargs.kernelValues[0][0])
        utils.widget_helper.global_dialog.spin7_2.setValue(varargs.varargs.kernelValues[0][1])
        utils.widget_helper.global_dialog.spin7_3.setValue(varargs.varargs.kernelValues[0][2])
        utils.widget_helper.global_dialog.spin7_4.setValue(varargs.varargs.kernelValues[0][3])
        utils.widget_helper.global_dialog.spin7_5.setValue(varargs.varargs.kernelValues[0][4])
        utils.widget_helper.global_dialog.spin7_6.setValue(varargs.varargs.kernelValues[0][5])
        utils.widget_helper.global_dialog.spin7_7.setValue(varargs.varargs.kernelValues[0][6])
        utils.widget_helper.global_dialog.spin7_8.setValue(varargs.varargs.kernelValues[1][0])
        utils.widget_helper.global_dialog.spin7_9.setValue(varargs.varargs.kernelValues[1][1])
        utils.widget_helper.global_dialog.spin7_10.setValue(varargs.varargs.kernelValues[1][2])
        utils.widget_helper.global_dialog.spin7_11.setValue(varargs.varargs.kernelValues[1][3])
        utils.widget_helper.global_dialog.spin7_12.setValue(varargs.varargs.kernelValues[1][4])
        utils.widget_helper.global_dialog.spin7_13.setValue(varargs.varargs.kernelValues[1][5])
        utils.widget_helper.global_dialog.spin7_14.setValue(varargs.varargs.kernelValues[1][6])
        utils.widget_helper.global_dialog.spin7_15.setValue(varargs.varargs.kernelValues[2][0])
        utils.widget_helper.global_dialog.spin7_16.setValue(varargs.varargs.kernelValues[2][1])
        utils.widget_helper.global_dialog.spin7_17.setValue(varargs.varargs.kernelValues[2][2])
        utils.widget_helper.global_dialog.spin7_18.setValue(varargs.varargs.kernelValues[2][3])
        utils.widget_helper.global_dialog.spin7_19.setValue(varargs.varargs.kernelValues[2][4])
        utils.widget_helper.global_dialog.spin7_20.setValue(varargs.varargs.kernelValues[2][5])
        utils.widget_helper.global_dialog.spin7_21.setValue(varargs.varargs.kernelValues[2][6])
        utils.widget_helper.global_dialog.spin7_22.setValue(varargs.varargs.kernelValues[3][0])
        utils.widget_helper.global_dialog.spin7_23.setValue(varargs.varargs.kernelValues[3][1])
        utils.widget_helper.global_dialog.spin7_24.setValue(varargs.varargs.kernelValues[3][2])
        utils.widget_helper.global_dialog.spin7_25.setValue(varargs.varargs.kernelValues[3][3])
        utils.widget_helper.global_dialog.spin7_26.setValue(varargs.varargs.kernelValues[3][4])
        utils.widget_helper.global_dialog.spin7_27.setValue(varargs.varargs.kernelValues[3][5])
        utils.widget_helper.global_dialog.spin7_28.setValue(varargs.varargs.kernelValues[3][6])
        utils.widget_helper.global_dialog.spin7_29.setValue(varargs.varargs.kernelValues[4][0])
        utils.widget_helper.global_dialog.spin7_30.setValue(varargs.varargs.kernelValues[4][1])
        utils.widget_helper.global_dialog.spin7_31.setValue(varargs.varargs.kernelValues[4][2])
        utils.widget_helper.global_dialog.spin7_32.setValue(varargs.varargs.kernelValues[4][3])
        utils.widget_helper.global_dialog.spin7_33.setValue(varargs.varargs.kernelValues[4][4])
        utils.widget_helper.global_dialog.spin7_34.setValue(varargs.varargs.kernelValues[4][5])
        utils.widget_helper.global_dialog.spin7_35.setValue(varargs.varargs.kernelValues[4][6])
        utils.widget_helper.global_dialog.spin7_36.setValue(varargs.varargs.kernelValues[5][0])
        utils.widget_helper.global_dialog.spin7_37.setValue(varargs.varargs.kernelValues[5][1])
        utils.widget_helper.global_dialog.spin7_38.setValue(varargs.varargs.kernelValues[5][2])
        utils.widget_helper.global_dialog.spin7_39.setValue(varargs.varargs.kernelValues[5][3])
        utils.widget_helper.global_dialog.spin7_40.setValue(varargs.varargs.kernelValues[5][4])
        utils.widget_helper.global_dialog.spin7_41.setValue(varargs.varargs.kernelValues[5][5])
        utils.widget_helper.global_dialog.spin7_42.setValue(varargs.varargs.kernelValues[5][6])
        utils.widget_helper.global_dialog.spin7_43.setValue(varargs.varargs.kernelValues[6][0])
        utils.widget_helper.global_dialog.spin7_44.setValue(varargs.varargs.kernelValues[6][1])
        utils.widget_helper.global_dialog.spin7_45.setValue(varargs.varargs.kernelValues[6][2])
        utils.widget_helper.global_dialog.spin7_46.setValue(varargs.varargs.kernelValues[6][3])
        utils.widget_helper.global_dialog.spin7_47.setValue(varargs.varargs.kernelValues[6][4])
        utils.widget_helper.global_dialog.spin7_48.setValue(varargs.varargs.kernelValues[6][5])
        utils.widget_helper.global_dialog.spin7_49.setValue(varargs.varargs.kernelValues[6][6])

    Dialog.exec_()
    utils.widget_helper.global_ce.refreshKernel()
    utils.widget_helper.global_dialog = None
    utils.widget_helper.global_dialog_handler = None


@pyqtSlot()
def previewKernelButtonClicked(self):
    # TODO: preview the kernel values
    pass

@pyqtSlot()
def pressOkButton(self):
    index = utils.widget_helper.global_dialog.tabWidget.currentIndex()
    print("Picked tab index", index)
    if index == 0:
        varargs.varargs.kernelSize = 3
        varargs.varargs.kernelValues[0][0] = utils.widget_helper.global_dialog.spin3_1.value()
        varargs.varargs.kernelValues[0][1] = utils.widget_helper.global_dialog.spin3_2.value()
        varargs.varargs.kernelValues[0][2] = utils.widget_helper.global_dialog.spin3_3.value()
        varargs.varargs.kernelValues[1][0] = utils.widget_helper.global_dialog.spin3_4.value()
        varargs.varargs.kernelValues[1][1] = utils.widget_helper.global_dialog.spin3_5.value()
        varargs.varargs.kernelValues[1][2] = utils.widget_helper.global_dialog.spin3_6.value()
        varargs.varargs.kernelValues[2][0] = utils.widget_helper.global_dialog.spin3_7.value()
        varargs.varargs.kernelValues[2][1] = utils.widget_helper.global_dialog.spin3_8.value()
        varargs.varargs.kernelValues[2][2] = utils.widget_helper.global_dialog.spin3_9.value()
    elif index == 1:
        varargs.varargs.kernelSize = 5
        varargs.varargs.kernelValues[0][0] = utils.widget_helper.global_dialog.spin5_1.value()
        varargs.varargs.kernelValues[0][1] = utils.widget_helper.global_dialog.spin5_2.value()
        varargs.varargs.kernelValues[0][2] = utils.widget_helper.global_dialog.spin5_3.value()
        varargs.varargs.kernelValues[0][3] = utils.widget_helper.global_dialog.spin5_4.value()
        varargs.varargs.kernelValues[0][4] = utils.widget_helper.global_dialog.spin5_5.value()
        varargs.varargs.kernelValues[1][0] = utils.widget_helper.global_dialog.spin5_6.value()
        varargs.varargs.kernelValues[1][1] = utils.widget_helper.global_dialog.spin5_7.value()
        varargs.varargs.kernelValues[1][2] = utils.widget_helper.global_dialog.spin5_8.value()
        varargs.varargs.kernelValues[1][3] = utils.widget_helper.global_dialog.spin5_9.value()
        varargs.varargs.kernelValues[1][4] = utils.widget_helper.global_dialog.spin5_10.value()
        varargs.varargs.kernelValues[2][0] = utils.widget_helper.global_dialog.spin5_11.value()
        varargs.varargs.kernelValues[2][1] = utils.widget_helper.global_dialog.spin5_12.value()
        varargs.varargs.kernelValues[2][2] = utils.widget_helper.global_dialog.spin5_13.value()
        varargs.varargs.kernelValues[2][3] = utils.widget_helper.global_dialog.spin5_14.value()
        varargs.varargs.kernelValues[2][4] = utils.widget_helper.global_dialog.spin5_15.value()
        varargs.varargs.kernelValues[3][0] = utils.widget_helper.global_dialog.spin5_16.value()
        varargs.varargs.kernelValues[3][1] = utils.widget_helper.global_dialog.spin5_17.value()
        varargs.varargs.kernelValues[3][2] = utils.widget_helper.global_dialog.spin5_18.value()
        varargs.varargs.kernelValues[3][3] = utils.widget_helper.global_dialog.spin5_19.value()
        varargs.varargs.kernelValues[3][4] = utils.widget_helper.global_dialog.spin5_20.value()
        varargs.varargs.kernelValues[4][0] = utils.widget_helper.global_dialog.spin5_21.value()
        varargs.varargs.kernelValues[4][1] = utils.widget_helper.global_dialog.spin5_22.value()
        varargs.varargs.kernelValues[4][2] = utils.widget_helper.global_dialog.spin5_23.value()
        varargs.varargs.kernelValues[4][3] = utils.widget_helper.global_dialog.spin5_24.value()
        varargs.varargs.kernelValues[4][4] = utils.widget_helper.global_dialog.spin5_25.value()
    elif index == 2:
        varargs.varargs.kernelSize = 7
        varargs.varargs.kernelValues[0][0] = utils.widget_helper.global_dialog.spin7_1.value()
        varargs.varargs.kernelValues[0][1] = utils.widget_helper.global_dialog.spin7_2.value()
        varargs.varargs.kernelValues[0][2] = utils.widget_helper.global_dialog.spin7_3.value()
        varargs.varargs.kernelValues[0][3] = utils.widget_helper.global_dialog.spin7_4.value()
        varargs.varargs.kernelValues[0][4] = utils.widget_helper.global_dialog.spin7_5.value()
        varargs.varargs.kernelValues[0][5] = utils.widget_helper.global_dialog.spin7_6.value()
        varargs.varargs.kernelValues[0][6] = utils.widget_helper.global_dialog.spin7_7.value()
        varargs.varargs.kernelValues[1][0] = utils.widget_helper.global_dialog.spin7_8.value()
        varargs.varargs.kernelValues[1][1] = utils.widget_helper.global_dialog.spin7_9.value()
        varargs.varargs.kernelValues[1][2] = utils.widget_helper.global_dialog.spin7_10.value()
        varargs.varargs.kernelValues[1][3] = utils.widget_helper.global_dialog.spin7_11.value()
        varargs.varargs.kernelValues[1][4] = utils.widget_helper.global_dialog.spin7_12.value()
        varargs.varargs.kernelValues[1][5] = utils.widget_helper.global_dialog.spin7_13.value()
        varargs.varargs.kernelValues[1][6] = utils.widget_helper.global_dialog.spin7_14.value()
        varargs.varargs.kernelValues[2][0] = utils.widget_helper.global_dialog.spin7_15.value()
        varargs.varargs.kernelValues[2][1] = utils.widget_helper.global_dialog.spin7_16.value()
        varargs.varargs.kernelValues[2][2] = utils.widget_helper.global_dialog.spin7_17.value()
        varargs.varargs.kernelValues[2][3] = utils.widget_helper.global_dialog.spin7_18.value()
        varargs.varargs.kernelValues[2][4] = utils.widget_helper.global_dialog.spin7_19.value()
        varargs.varargs.kernelValues[2][5] = utils.widget_helper.global_dialog.spin7_20.value()
        varargs.varargs.kernelValues[2][6] = utils.widget_helper.global_dialog.spin7_21.value()
        varargs.varargs.kernelValues[3][0] = utils.widget_helper.global_dialog.spin7_22.value()
        varargs.varargs.kernelValues[3][1] = utils.widget_helper.global_dialog.spin7_23.value()
        varargs.varargs.kernelValues[3][2] = utils.widget_helper.global_dialog.spin7_24.value()
        varargs.varargs.kernelValues[3][3] = utils.widget_helper.global_dialog.spin7_25.value()
        varargs.varargs.kernelValues[3][4] = utils.widget_helper.global_dialog.spin7_26.value()
        varargs.varargs.kernelValues[3][5] = utils.widget_helper.global_dialog.spin7_27.value()
        varargs.varargs.kernelValues[3][6] = utils.widget_helper.global_dialog.spin7_28.value()
        varargs.varargs.kernelValues[4][0] = utils.widget_helper.global_dialog.spin7_29.value()
        varargs.varargs.kernelValues[4][1] = utils.widget_helper.global_dialog.spin7_30.value()
        varargs.varargs.kernelValues[4][2] = utils.widget_helper.global_dialog.spin7_31.value()
        varargs.varargs.kernelValues[4][3] = utils.widget_helper.global_dialog.spin7_32.value()
        varargs.varargs.kernelValues[4][4] = utils.widget_helper.global_dialog.spin7_33.value()
        varargs.varargs.kernelValues[4][5] = utils.widget_helper.global_dialog.spin7_34.value()
        varargs.varargs.kernelValues[4][6] = utils.widget_helper.global_dialog.spin7_35.value()
        varargs.varargs.kernelValues[5][0] = utils.widget_helper.global_dialog.spin7_36.value()
        varargs.varargs.kernelValues[5][1] = utils.widget_helper.global_dialog.spin7_37.value()
        varargs.varargs.kernelValues[5][2] = utils.widget_helper.global_dialog.spin7_38.value()
        varargs.varargs.kernelValues[5][3] = utils.widget_helper.global_dialog.spin7_39.value()
        varargs.varargs.kernelValues[5][4] = utils.widget_helper.global_dialog.spin7_40.value()
        varargs.varargs.kernelValues[5][5] = utils.widget_helper.global_dialog.spin7_41.value()
        varargs.varargs.kernelValues[5][6] = utils.widget_helper.global_dialog.spin7_42.value()
        varargs.varargs.kernelValues[6][0] = utils.widget_helper.global_dialog.spin7_43.value()
        varargs.varargs.kernelValues[6][1] = utils.widget_helper.global_dialog.spin7_44.value()
        varargs.varargs.kernelValues[6][2] = utils.widget_helper.global_dialog.spin7_45.value()
        varargs.varargs.kernelValues[6][3] = utils.widget_helper.global_dialog.spin7_46.value()
        varargs.varargs.kernelValues[6][4] = utils.widget_helper.global_dialog.spin7_47.value()
        varargs.varargs.kernelValues[6][5] = utils.widget_helper.global_dialog.spin7_48.value()
        varargs.varargs.kernelValues[6][6] = utils.widget_helper.global_dialog.spin7_49.value()

    utils.widget_helper.global_dialog_handler.close()

@pyqtSlot()
def pressCancelButton(self):
    utils.widget_helper.global_dialog_handler.close()

@pyqtSlot()
def pressResetButton(self):
    pass

@pyqtSlot()
def threeKernelSizeRadioButtonClicked(self):
    varargs.varargs.kernelSize = 3
    editKernelButtonClicked(utils.widget_helper.global_ce)

@pyqtSlot()
def fiveKernelSizeRadioButtonClicked(self):
    varargs.varargs.kernelSize = 5
    editKernelButtonClicked(utils.widget_helper.global_ce)

@pyqtSlot()
def sevenKernelSizeRadioButtonClicked(self):
    varargs.varargs.kernelSize = 7
    editKernelButtonClicked(utils.widget_helper.global_ce)