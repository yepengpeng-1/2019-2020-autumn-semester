# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'maskdialog.ui'
#
# Created by: PyQt5 UI code generator 5.13.2
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.setWindowModality(QtCore.Qt.NonModal)
        Dialog.resize(293, 137)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(Dialog.sizePolicy().hasHeightForWidth())
        Dialog.setSizePolicy(sizePolicy)
        Dialog.setMinimumSize(QtCore.QSize(293, 137))
        Dialog.setMaximumSize(QtCore.QSize(293, 137))
        self.horizontalLayout = QtWidgets.QHBoxLayout(Dialog)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.verticalLayout_2 = QtWidgets.QVBoxLayout()
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.label = QtWidgets.QLabel(Dialog)
        self.label.setObjectName("label")
        self.verticalLayout_2.addWidget(self.label)
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.useNewImageButton = QtWidgets.QRadioButton(Dialog)
        self.useNewImageButton.setObjectName("useNewImageButton")
        self.verticalLayout.addWidget(self.useNewImageButton)
        self.useErodedButton = QtWidgets.QRadioButton(Dialog)
        self.useErodedButton.setObjectName("useErodedButton")
        self.verticalLayout.addWidget(self.useErodedButton)
        self.useDilatedButton = QtWidgets.QRadioButton(Dialog)
        self.useDilatedButton.setObjectName("useDilatedButton")
        self.verticalLayout.addWidget(self.useDilatedButton)
        self.verticalLayout_2.addLayout(self.verticalLayout)
        self.horizontalLayout.addLayout(self.verticalLayout_2)
        self.verticalLayout_3 = QtWidgets.QVBoxLayout()
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        self.okButton = QtWidgets.QPushButton(Dialog)
        self.okButton.setDefault(True)
        self.okButton.setObjectName("okButton")
        self.verticalLayout_3.addWidget(self.okButton)
        self.cancelButton = QtWidgets.QPushButton(Dialog)
        self.cancelButton.setObjectName("cancelButton")
        self.verticalLayout_3.addWidget(self.cancelButton)
        spacerItem = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_3.addItem(spacerItem)
        self.horizontalLayout.addLayout(self.verticalLayout_3)

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Mask 請求"))
        self.label.setText(_translate("Dialog", "如何確定掩模（Mask）？"))
        self.useNewImageButton.setText(_translate("Dialog", "引入另一幅圖作為 Mask"))
        self.useErodedButton.setText(_translate("Dialog", "將原圖腐蝕後作為 Mask"))
        self.useDilatedButton.setText(_translate("Dialog", "將原圖膨脹後作為 Mask"))
        self.okButton.setText(_translate("Dialog", "確認"))
        self.okButton.setShortcut(_translate("Dialog", "Return"))
        self.cancelButton.setText(_translate("Dialog", "取消"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog()
    ui.setupUi(Dialog)
    Dialog.show()
    sys.exit(app.exec_())
