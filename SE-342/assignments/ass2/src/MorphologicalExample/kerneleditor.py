# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'kerneleditor.ui'
#
# Created by: PyQt5 UI code generator 5.13.2
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.setWindowModality(QtCore.Qt.ApplicationModal)
        Dialog.resize(637, 298)
        Dialog.setCursor(QtGui.QCursor(QtCore.Qt.ArrowCursor))
        self.horizontalLayout = QtWidgets.QHBoxLayout(Dialog)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.tabWidget = QtWidgets.QTabWidget(Dialog)
        self.tabWidget.setEnabled(True)
        self.tabWidget.setTabPosition(QtWidgets.QTabWidget.North)
        self.tabWidget.setTabShape(QtWidgets.QTabWidget.Triangular)
        self.tabWidget.setElideMode(QtCore.Qt.ElideRight)
        self.tabWidget.setUsesScrollButtons(False)
        self.tabWidget.setDocumentMode(False)
        self.tabWidget.setTabsClosable(False)
        self.tabWidget.setMovable(False)
        self.tabWidget.setTabBarAutoHide(False)
        self.tabWidget.setObjectName("tabWidget")
        self.threeSize = QtWidgets.QWidget()
        self.threeSize.setEnabled(True)
        self.threeSize.setObjectName("threeSize")
        self.horizontalLayout_5 = QtWidgets.QHBoxLayout(self.threeSize)
        self.horizontalLayout_5.setObjectName("horizontalLayout_5")
        self.widget = QtWidgets.QWidget(self.threeSize)
        self.widget.setObjectName("widget")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout(self.widget)
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.spin3_1 = QtWidgets.QDoubleSpinBox(self.widget)
        self.spin3_1.setMinimum(-10.0)
        self.spin3_1.setMaximum(10.0)
        self.spin3_1.setSingleStep(0.05)
        self.spin3_1.setObjectName("spin3_1")
        self.verticalLayout.addWidget(self.spin3_1)
        self.spin3_4 = QtWidgets.QDoubleSpinBox(self.widget)
        self.spin3_4.setMinimum(-10.0)
        self.spin3_4.setMaximum(10.0)
        self.spin3_4.setSingleStep(0.05)
        self.spin3_4.setObjectName("spin3_4")
        self.verticalLayout.addWidget(self.spin3_4)
        self.spin3_7 = QtWidgets.QDoubleSpinBox(self.widget)
        self.spin3_7.setMinimum(-10.0)
        self.spin3_7.setMaximum(10.0)
        self.spin3_7.setSingleStep(0.05)
        self.spin3_7.setObjectName("spin3_7")
        self.verticalLayout.addWidget(self.spin3_7)
        self.horizontalLayout_2.addLayout(self.verticalLayout)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout()
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.spin3_2 = QtWidgets.QDoubleSpinBox(self.widget)
        self.spin3_2.setMinimum(-10.0)
        self.spin3_2.setMaximum(10.0)
        self.spin3_2.setSingleStep(0.05)
        self.spin3_2.setObjectName("spin3_2")
        self.verticalLayout_2.addWidget(self.spin3_2)
        self.spin3_5 = QtWidgets.QDoubleSpinBox(self.widget)
        self.spin3_5.setMinimum(-10.0)
        self.spin3_5.setMaximum(10.0)
        self.spin3_5.setSingleStep(0.05)
        self.spin3_5.setObjectName("spin3_5")
        self.verticalLayout_2.addWidget(self.spin3_5)
        self.spin3_8 = QtWidgets.QDoubleSpinBox(self.widget)
        self.spin3_8.setMinimum(-10.0)
        self.spin3_8.setMaximum(10.0)
        self.spin3_8.setSingleStep(0.05)
        self.spin3_8.setObjectName("spin3_8")
        self.verticalLayout_2.addWidget(self.spin3_8)
        self.horizontalLayout_2.addLayout(self.verticalLayout_2)
        self.verticalLayout_3 = QtWidgets.QVBoxLayout()
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        self.spin3_3 = QtWidgets.QDoubleSpinBox(self.widget)
        self.spin3_3.setMinimum(-10.0)
        self.spin3_3.setMaximum(10.0)
        self.spin3_3.setSingleStep(0.05)
        self.spin3_3.setObjectName("spin3_3")
        self.verticalLayout_3.addWidget(self.spin3_3)
        self.spin3_6 = QtWidgets.QDoubleSpinBox(self.widget)
        self.spin3_6.setMinimum(-10.0)
        self.spin3_6.setMaximum(10.0)
        self.spin3_6.setSingleStep(0.05)
        self.spin3_6.setObjectName("spin3_6")
        self.verticalLayout_3.addWidget(self.spin3_6)
        self.spin3_9 = QtWidgets.QDoubleSpinBox(self.widget)
        self.spin3_9.setMinimum(-10.0)
        self.spin3_9.setMaximum(10.0)
        self.spin3_9.setSingleStep(0.05)
        self.spin3_9.setObjectName("spin3_9")
        self.verticalLayout_3.addWidget(self.spin3_9)
        self.horizontalLayout_2.addLayout(self.verticalLayout_3)
        self.horizontalLayout_5.addWidget(self.widget)
        icon = QtGui.QIcon.fromTheme("3")
        self.tabWidget.addTab(self.threeSize, icon, "")
        self.fiveSize = QtWidgets.QWidget()
        self.fiveSize.setObjectName("fiveSize")
        self.horizontalLayout_6 = QtWidgets.QHBoxLayout(self.fiveSize)
        self.horizontalLayout_6.setObjectName("horizontalLayout_6")
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.verticalLayout_5 = QtWidgets.QVBoxLayout()
        self.verticalLayout_5.setObjectName("verticalLayout_5")
        self.spin5_1 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_1.setMinimum(-10.0)
        self.spin5_1.setMaximum(10.0)
        self.spin5_1.setSingleStep(0.05)
        self.spin5_1.setObjectName("spin5_1")
        self.verticalLayout_5.addWidget(self.spin5_1)
        self.spin5_6 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_6.setMinimum(-10.0)
        self.spin5_6.setMaximum(10.0)
        self.spin5_6.setSingleStep(0.05)
        self.spin5_6.setObjectName("spin5_6")
        self.verticalLayout_5.addWidget(self.spin5_6)
        self.spin5_11 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_11.setMinimum(-10.0)
        self.spin5_11.setMaximum(10.0)
        self.spin5_11.setSingleStep(0.05)
        self.spin5_11.setObjectName("spin5_11")
        self.verticalLayout_5.addWidget(self.spin5_11)
        self.spin5_16 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_16.setMinimum(-10.0)
        self.spin5_16.setMaximum(10.0)
        self.spin5_16.setSingleStep(0.05)
        self.spin5_16.setObjectName("spin5_16")
        self.verticalLayout_5.addWidget(self.spin5_16)
        self.spin5_21 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_21.setMinimum(-10.0)
        self.spin5_21.setMaximum(10.0)
        self.spin5_21.setSingleStep(0.05)
        self.spin5_21.setObjectName("spin5_21")
        self.verticalLayout_5.addWidget(self.spin5_21)
        self.horizontalLayout_3.addLayout(self.verticalLayout_5)
        self.verticalLayout_6 = QtWidgets.QVBoxLayout()
        self.verticalLayout_6.setObjectName("verticalLayout_6")
        self.spin5_2 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_2.setMinimum(-10.0)
        self.spin5_2.setMaximum(10.0)
        self.spin5_2.setSingleStep(0.05)
        self.spin5_2.setObjectName("spin5_2")
        self.verticalLayout_6.addWidget(self.spin5_2)
        self.spin5_7 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_7.setMinimum(-10.0)
        self.spin5_7.setMaximum(10.0)
        self.spin5_7.setSingleStep(0.05)
        self.spin5_7.setObjectName("spin5_7")
        self.verticalLayout_6.addWidget(self.spin5_7)
        self.spin5_12 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_12.setMinimum(-10.0)
        self.spin5_12.setMaximum(10.0)
        self.spin5_12.setSingleStep(0.05)
        self.spin5_12.setObjectName("spin5_12")
        self.verticalLayout_6.addWidget(self.spin5_12)
        self.spin5_17 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_17.setMinimum(-10.0)
        self.spin5_17.setMaximum(10.0)
        self.spin5_17.setSingleStep(0.05)
        self.spin5_17.setObjectName("spin5_17")
        self.verticalLayout_6.addWidget(self.spin5_17)
        self.spin5_22 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_22.setMinimum(-10.0)
        self.spin5_22.setMaximum(10.0)
        self.spin5_22.setSingleStep(0.05)
        self.spin5_22.setObjectName("spin5_22")
        self.verticalLayout_6.addWidget(self.spin5_22)
        self.horizontalLayout_3.addLayout(self.verticalLayout_6)
        self.verticalLayout_7 = QtWidgets.QVBoxLayout()
        self.verticalLayout_7.setObjectName("verticalLayout_7")
        self.spin5_3 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_3.setMinimum(-10.0)
        self.spin5_3.setMaximum(10.0)
        self.spin5_3.setSingleStep(0.05)
        self.spin5_3.setObjectName("spin5_3")
        self.verticalLayout_7.addWidget(self.spin5_3)
        self.spin5_8 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_8.setMinimum(-10.0)
        self.spin5_8.setMaximum(10.0)
        self.spin5_8.setSingleStep(0.05)
        self.spin5_8.setObjectName("spin5_8")
        self.verticalLayout_7.addWidget(self.spin5_8)
        self.spin5_13 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_13.setMinimum(-10.0)
        self.spin5_13.setMaximum(10.0)
        self.spin5_13.setSingleStep(0.05)
        self.spin5_13.setObjectName("spin5_13")
        self.verticalLayout_7.addWidget(self.spin5_13)
        self.spin5_18 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_18.setMinimum(-10.0)
        self.spin5_18.setMaximum(10.0)
        self.spin5_18.setSingleStep(0.05)
        self.spin5_18.setObjectName("spin5_18")
        self.verticalLayout_7.addWidget(self.spin5_18)
        self.spin5_23 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_23.setMinimum(-10.0)
        self.spin5_23.setMaximum(10.0)
        self.spin5_23.setSingleStep(0.05)
        self.spin5_23.setObjectName("spin5_23")
        self.verticalLayout_7.addWidget(self.spin5_23)
        self.horizontalLayout_3.addLayout(self.verticalLayout_7)
        self.verticalLayout_8 = QtWidgets.QVBoxLayout()
        self.verticalLayout_8.setObjectName("verticalLayout_8")
        self.spin5_4 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_4.setMinimum(-10.0)
        self.spin5_4.setMaximum(10.0)
        self.spin5_4.setSingleStep(0.05)
        self.spin5_4.setObjectName("spin5_4")
        self.verticalLayout_8.addWidget(self.spin5_4)
        self.spin5_9 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_9.setMinimum(-10.0)
        self.spin5_9.setMaximum(10.0)
        self.spin5_9.setSingleStep(0.05)
        self.spin5_9.setObjectName("spin5_9")
        self.verticalLayout_8.addWidget(self.spin5_9)
        self.spin5_14 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_14.setMinimum(-10.0)
        self.spin5_14.setMaximum(10.0)
        self.spin5_14.setSingleStep(0.05)
        self.spin5_14.setObjectName("spin5_14")
        self.verticalLayout_8.addWidget(self.spin5_14)
        self.spin5_19 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_19.setMinimum(-10.0)
        self.spin5_19.setMaximum(10.0)
        self.spin5_19.setSingleStep(0.05)
        self.spin5_19.setObjectName("spin5_19")
        self.verticalLayout_8.addWidget(self.spin5_19)
        self.spin5_24 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_24.setMinimum(-10.0)
        self.spin5_24.setMaximum(10.0)
        self.spin5_24.setSingleStep(0.05)
        self.spin5_24.setObjectName("spin5_24")
        self.verticalLayout_8.addWidget(self.spin5_24)
        self.horizontalLayout_3.addLayout(self.verticalLayout_8)
        self.verticalLayout_9 = QtWidgets.QVBoxLayout()
        self.verticalLayout_9.setObjectName("verticalLayout_9")
        self.spin5_5 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_5.setMinimum(-10.0)
        self.spin5_5.setMaximum(10.0)
        self.spin5_5.setSingleStep(0.05)
        self.spin5_5.setObjectName("spin5_5")
        self.verticalLayout_9.addWidget(self.spin5_5)
        self.spin5_10 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_10.setMinimum(-10.0)
        self.spin5_10.setMaximum(10.0)
        self.spin5_10.setSingleStep(0.05)
        self.spin5_10.setObjectName("spin5_10")
        self.verticalLayout_9.addWidget(self.spin5_10)
        self.spin5_15 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_15.setMinimum(-10.0)
        self.spin5_15.setMaximum(10.0)
        self.spin5_15.setSingleStep(0.05)
        self.spin5_15.setObjectName("spin5_15")
        self.verticalLayout_9.addWidget(self.spin5_15)
        self.spin5_20 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_20.setMinimum(-10.0)
        self.spin5_20.setMaximum(10.0)
        self.spin5_20.setSingleStep(0.05)
        self.spin5_20.setObjectName("spin5_20")
        self.verticalLayout_9.addWidget(self.spin5_20)
        self.spin5_25 = QtWidgets.QDoubleSpinBox(self.fiveSize)
        self.spin5_25.setMinimum(-10.0)
        self.spin5_25.setMaximum(10.0)
        self.spin5_25.setSingleStep(0.05)
        self.spin5_25.setObjectName("spin5_25")
        self.verticalLayout_9.addWidget(self.spin5_25)
        self.horizontalLayout_3.addLayout(self.verticalLayout_9)
        self.horizontalLayout_6.addLayout(self.horizontalLayout_3)
        self.tabWidget.addTab(self.fiveSize, "")
        self.sevenSize = QtWidgets.QWidget()
        self.sevenSize.setObjectName("sevenSize")
        self.horizontalLayout_7 = QtWidgets.QHBoxLayout(self.sevenSize)
        self.horizontalLayout_7.setObjectName("horizontalLayout_7")
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.verticalLayout_10 = QtWidgets.QVBoxLayout()
        self.verticalLayout_10.setObjectName("verticalLayout_10")
        self.spin7_1 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_1.setMinimum(-10.0)
        self.spin7_1.setMaximum(10.0)
        self.spin7_1.setSingleStep(0.05)
        self.spin7_1.setObjectName("spin7_1")
        self.verticalLayout_10.addWidget(self.spin7_1)
        self.spin7_8 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_8.setMinimum(-10.0)
        self.spin7_8.setMaximum(10.0)
        self.spin7_8.setSingleStep(0.05)
        self.spin7_8.setObjectName("spin7_8")
        self.verticalLayout_10.addWidget(self.spin7_8)
        self.spin7_15 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_15.setMinimum(-10.0)
        self.spin7_15.setMaximum(10.0)
        self.spin7_15.setSingleStep(0.05)
        self.spin7_15.setObjectName("spin7_15")
        self.verticalLayout_10.addWidget(self.spin7_15)
        self.spin7_22 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_22.setMinimum(-10.0)
        self.spin7_22.setMaximum(10.0)
        self.spin7_22.setSingleStep(0.05)
        self.spin7_22.setObjectName("spin7_22")
        self.verticalLayout_10.addWidget(self.spin7_22)
        self.spin7_29 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_29.setMinimum(-10.0)
        self.spin7_29.setMaximum(10.0)
        self.spin7_29.setSingleStep(0.05)
        self.spin7_29.setObjectName("spin7_29")
        self.verticalLayout_10.addWidget(self.spin7_29)
        self.spin7_36 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_36.setMinimum(-10.0)
        self.spin7_36.setMaximum(10.0)
        self.spin7_36.setSingleStep(0.05)
        self.spin7_36.setObjectName("spin7_36")
        self.verticalLayout_10.addWidget(self.spin7_36)
        self.spin7_43 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_43.setMinimum(-10.0)
        self.spin7_43.setMaximum(10.0)
        self.spin7_43.setSingleStep(0.05)
        self.spin7_43.setObjectName("spin7_43")
        self.verticalLayout_10.addWidget(self.spin7_43)
        self.horizontalLayout_4.addLayout(self.verticalLayout_10)
        self.verticalLayout_11 = QtWidgets.QVBoxLayout()
        self.verticalLayout_11.setObjectName("verticalLayout_11")
        self.spin7_2 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_2.setMinimum(-10.0)
        self.spin7_2.setMaximum(10.0)
        self.spin7_2.setSingleStep(0.05)
        self.spin7_2.setObjectName("spin7_2")
        self.verticalLayout_11.addWidget(self.spin7_2)
        self.spin7_9 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_9.setMinimum(-10.0)
        self.spin7_9.setMaximum(10.0)
        self.spin7_9.setSingleStep(0.05)
        self.spin7_9.setObjectName("spin7_9")
        self.verticalLayout_11.addWidget(self.spin7_9)
        self.spin7_16 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_16.setMinimum(-10.0)
        self.spin7_16.setMaximum(10.0)
        self.spin7_16.setSingleStep(0.05)
        self.spin7_16.setObjectName("spin7_16")
        self.verticalLayout_11.addWidget(self.spin7_16)
        self.spin7_23 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_23.setMinimum(-10.0)
        self.spin7_23.setMaximum(10.0)
        self.spin7_23.setSingleStep(0.05)
        self.spin7_23.setObjectName("spin7_23")
        self.verticalLayout_11.addWidget(self.spin7_23)
        self.spin7_30 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_30.setMinimum(-10.0)
        self.spin7_30.setMaximum(10.0)
        self.spin7_30.setSingleStep(0.05)
        self.spin7_30.setObjectName("spin7_30")
        self.verticalLayout_11.addWidget(self.spin7_30)
        self.spin7_37 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_37.setMinimum(-10.0)
        self.spin7_37.setMaximum(10.0)
        self.spin7_37.setSingleStep(0.05)
        self.spin7_37.setObjectName("spin7_37")
        self.verticalLayout_11.addWidget(self.spin7_37)
        self.spin7_44 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_44.setMinimum(-10.0)
        self.spin7_44.setMaximum(10.0)
        self.spin7_44.setSingleStep(0.05)
        self.spin7_44.setObjectName("spin7_44")
        self.verticalLayout_11.addWidget(self.spin7_44)
        self.horizontalLayout_4.addLayout(self.verticalLayout_11)
        self.verticalLayout_12 = QtWidgets.QVBoxLayout()
        self.verticalLayout_12.setObjectName("verticalLayout_12")
        self.spin7_3 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_3.setMinimum(-10.0)
        self.spin7_3.setMaximum(10.0)
        self.spin7_3.setSingleStep(0.05)
        self.spin7_3.setObjectName("spin7_3")
        self.verticalLayout_12.addWidget(self.spin7_3)
        self.spin7_10 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_10.setMinimum(-10.0)
        self.spin7_10.setMaximum(10.0)
        self.spin7_10.setSingleStep(0.05)
        self.spin7_10.setObjectName("spin7_10")
        self.verticalLayout_12.addWidget(self.spin7_10)
        self.spin7_17 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_17.setMinimum(-10.0)
        self.spin7_17.setMaximum(10.0)
        self.spin7_17.setSingleStep(0.05)
        self.spin7_17.setObjectName("spin7_17")
        self.verticalLayout_12.addWidget(self.spin7_17)
        self.spin7_24 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_24.setMinimum(-10.0)
        self.spin7_24.setMaximum(10.0)
        self.spin7_24.setSingleStep(0.05)
        self.spin7_24.setObjectName("spin7_24")
        self.verticalLayout_12.addWidget(self.spin7_24)
        self.spin7_31 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_31.setMinimum(-10.0)
        self.spin7_31.setMaximum(10.0)
        self.spin7_31.setSingleStep(0.05)
        self.spin7_31.setObjectName("spin7_31")
        self.verticalLayout_12.addWidget(self.spin7_31)
        self.spin7_38 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_38.setMinimum(-10.0)
        self.spin7_38.setMaximum(10.0)
        self.spin7_38.setSingleStep(0.05)
        self.spin7_38.setObjectName("spin7_38")
        self.verticalLayout_12.addWidget(self.spin7_38)
        self.spin7_45 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_45.setMinimum(-10.0)
        self.spin7_45.setMaximum(10.0)
        self.spin7_45.setSingleStep(0.05)
        self.spin7_45.setObjectName("spin7_45")
        self.verticalLayout_12.addWidget(self.spin7_45)
        self.horizontalLayout_4.addLayout(self.verticalLayout_12)
        self.verticalLayout_13 = QtWidgets.QVBoxLayout()
        self.verticalLayout_13.setObjectName("verticalLayout_13")
        self.spin7_4 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_4.setMinimum(-10.0)
        self.spin7_4.setMaximum(10.0)
        self.spin7_4.setSingleStep(0.05)
        self.spin7_4.setObjectName("spin7_4")
        self.verticalLayout_13.addWidget(self.spin7_4)
        self.spin7_11 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_11.setMinimum(-10.0)
        self.spin7_11.setMaximum(10.0)
        self.spin7_11.setSingleStep(0.05)
        self.spin7_11.setObjectName("spin7_11")
        self.verticalLayout_13.addWidget(self.spin7_11)
        self.spin7_18 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_18.setMinimum(-10.0)
        self.spin7_18.setMaximum(10.0)
        self.spin7_18.setSingleStep(0.05)
        self.spin7_18.setObjectName("spin7_18")
        self.verticalLayout_13.addWidget(self.spin7_18)
        self.spin7_25 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_25.setMinimum(-10.0)
        self.spin7_25.setMaximum(10.0)
        self.spin7_25.setSingleStep(0.05)
        self.spin7_25.setObjectName("spin7_25")
        self.verticalLayout_13.addWidget(self.spin7_25)
        self.spin7_32 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_32.setMinimum(-10.0)
        self.spin7_32.setMaximum(10.0)
        self.spin7_32.setSingleStep(0.05)
        self.spin7_32.setObjectName("spin7_32")
        self.verticalLayout_13.addWidget(self.spin7_32)
        self.spin7_39 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_39.setMinimum(-10.0)
        self.spin7_39.setMaximum(10.0)
        self.spin7_39.setSingleStep(0.05)
        self.spin7_39.setObjectName("spin7_39")
        self.verticalLayout_13.addWidget(self.spin7_39)
        self.spin7_46 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_46.setMinimum(-10.0)
        self.spin7_46.setMaximum(10.0)
        self.spin7_46.setSingleStep(0.05)
        self.spin7_46.setObjectName("spin7_46")
        self.verticalLayout_13.addWidget(self.spin7_46)
        self.horizontalLayout_4.addLayout(self.verticalLayout_13)
        self.verticalLayout_14 = QtWidgets.QVBoxLayout()
        self.verticalLayout_14.setObjectName("verticalLayout_14")
        self.spin7_5 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_5.setMinimum(-10.0)
        self.spin7_5.setMaximum(10.0)
        self.spin7_5.setSingleStep(0.05)
        self.spin7_5.setObjectName("spin7_5")
        self.verticalLayout_14.addWidget(self.spin7_5)
        self.spin7_12 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_12.setMinimum(-10.0)
        self.spin7_12.setMaximum(10.0)
        self.spin7_12.setSingleStep(0.05)
        self.spin7_12.setObjectName("spin7_12")
        self.verticalLayout_14.addWidget(self.spin7_12)
        self.spin7_19 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_19.setMinimum(-10.0)
        self.spin7_19.setMaximum(10.0)
        self.spin7_19.setSingleStep(0.05)
        self.spin7_19.setObjectName("spin7_19")
        self.verticalLayout_14.addWidget(self.spin7_19)
        self.spin7_26 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_26.setMinimum(-10.0)
        self.spin7_26.setMaximum(10.0)
        self.spin7_26.setSingleStep(0.05)
        self.spin7_26.setObjectName("spin7_26")
        self.verticalLayout_14.addWidget(self.spin7_26)
        self.spin7_33 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_33.setMinimum(-10.0)
        self.spin7_33.setMaximum(10.0)
        self.spin7_33.setSingleStep(0.05)
        self.spin7_33.setObjectName("spin7_33")
        self.verticalLayout_14.addWidget(self.spin7_33)
        self.spin7_40 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_40.setMinimum(-10.0)
        self.spin7_40.setMaximum(10.0)
        self.spin7_40.setSingleStep(0.05)
        self.spin7_40.setObjectName("spin7_40")
        self.verticalLayout_14.addWidget(self.spin7_40)
        self.spin7_47 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_47.setMinimum(-10.0)
        self.spin7_47.setMaximum(10.0)
        self.spin7_47.setSingleStep(0.05)
        self.spin7_47.setObjectName("spin7_47")
        self.verticalLayout_14.addWidget(self.spin7_47)
        self.horizontalLayout_4.addLayout(self.verticalLayout_14)
        self.verticalLayout_15 = QtWidgets.QVBoxLayout()
        self.verticalLayout_15.setObjectName("verticalLayout_15")
        self.spin7_6 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_6.setMinimum(-10.0)
        self.spin7_6.setMaximum(10.0)
        self.spin7_6.setSingleStep(0.05)
        self.spin7_6.setObjectName("spin7_6")
        self.verticalLayout_15.addWidget(self.spin7_6)
        self.spin7_13 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_13.setMinimum(-10.0)
        self.spin7_13.setMaximum(10.0)
        self.spin7_13.setSingleStep(0.05)
        self.spin7_13.setObjectName("spin7_13")
        self.verticalLayout_15.addWidget(self.spin7_13)
        self.spin7_20 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_20.setMinimum(-10.0)
        self.spin7_20.setMaximum(10.0)
        self.spin7_20.setSingleStep(0.05)
        self.spin7_20.setObjectName("spin7_20")
        self.verticalLayout_15.addWidget(self.spin7_20)
        self.spin7_27 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_27.setMinimum(-10.0)
        self.spin7_27.setMaximum(10.0)
        self.spin7_27.setSingleStep(0.05)
        self.spin7_27.setObjectName("spin7_27")
        self.verticalLayout_15.addWidget(self.spin7_27)
        self.spin7_34 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_34.setMinimum(-10.0)
        self.spin7_34.setMaximum(10.0)
        self.spin7_34.setSingleStep(0.05)
        self.spin7_34.setObjectName("spin7_34")
        self.verticalLayout_15.addWidget(self.spin7_34)
        self.spin7_41 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_41.setMinimum(-10.0)
        self.spin7_41.setMaximum(10.0)
        self.spin7_41.setSingleStep(0.05)
        self.spin7_41.setObjectName("spin7_41")
        self.verticalLayout_15.addWidget(self.spin7_41)
        self.spin7_48 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_48.setMinimum(-10.0)
        self.spin7_48.setMaximum(10.0)
        self.spin7_48.setSingleStep(0.05)
        self.spin7_48.setObjectName("spin7_48")
        self.verticalLayout_15.addWidget(self.spin7_48)
        self.horizontalLayout_4.addLayout(self.verticalLayout_15)
        self.verticalLayout_16 = QtWidgets.QVBoxLayout()
        self.verticalLayout_16.setObjectName("verticalLayout_16")
        self.spin7_7 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_7.setMinimum(-10.0)
        self.spin7_7.setMaximum(10.0)
        self.spin7_7.setSingleStep(0.05)
        self.spin7_7.setObjectName("spin7_7")
        self.verticalLayout_16.addWidget(self.spin7_7)
        self.spin7_14 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_14.setMinimum(-10.0)
        self.spin7_14.setMaximum(10.0)
        self.spin7_14.setSingleStep(0.05)
        self.spin7_14.setObjectName("spin7_14")
        self.verticalLayout_16.addWidget(self.spin7_14)
        self.spin7_21 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_21.setMinimum(-10.0)
        self.spin7_21.setMaximum(10.0)
        self.spin7_21.setSingleStep(0.05)
        self.spin7_21.setObjectName("spin7_21")
        self.verticalLayout_16.addWidget(self.spin7_21)
        self.spin7_28 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_28.setMinimum(-10.0)
        self.spin7_28.setMaximum(10.0)
        self.spin7_28.setSingleStep(0.05)
        self.spin7_28.setObjectName("spin7_28")
        self.verticalLayout_16.addWidget(self.spin7_28)
        self.spin7_35 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_35.setMinimum(-10.0)
        self.spin7_35.setMaximum(10.0)
        self.spin7_35.setSingleStep(0.05)
        self.spin7_35.setObjectName("spin7_35")
        self.verticalLayout_16.addWidget(self.spin7_35)
        self.spin7_42 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_42.setMinimum(-10.0)
        self.spin7_42.setMaximum(10.0)
        self.spin7_42.setSingleStep(0.05)
        self.spin7_42.setObjectName("spin7_42")
        self.verticalLayout_16.addWidget(self.spin7_42)
        self.spin7_49 = QtWidgets.QDoubleSpinBox(self.sevenSize)
        self.spin7_49.setMinimum(-10.0)
        self.spin7_49.setMaximum(10.0)
        self.spin7_49.setSingleStep(0.05)
        self.spin7_49.setObjectName("spin7_49")
        self.verticalLayout_16.addWidget(self.spin7_49)
        self.horizontalLayout_4.addLayout(self.verticalLayout_16)
        self.horizontalLayout_7.addLayout(self.horizontalLayout_4)
        self.tabWidget.addTab(self.sevenSize, "")
        self.horizontalLayout.addWidget(self.tabWidget)
        self.verticalLayout_4 = QtWidgets.QVBoxLayout()
        self.verticalLayout_4.setSizeConstraint(QtWidgets.QLayout.SetDefaultConstraint)
        self.verticalLayout_4.setObjectName("verticalLayout_4")
        self.okButton = QtWidgets.QPushButton(Dialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.okButton.sizePolicy().hasHeightForWidth())
        self.okButton.setSizePolicy(sizePolicy)
        self.okButton.setDefault(True)
        self.okButton.setObjectName("okButton")
        self.verticalLayout_4.addWidget(self.okButton)
        self.cancelButton = QtWidgets.QPushButton(Dialog)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.cancelButton.sizePolicy().hasHeightForWidth())
        self.cancelButton.setSizePolicy(sizePolicy)
        self.cancelButton.setObjectName("cancelButton")
        self.verticalLayout_4.addWidget(self.cancelButton)
        spacerItem = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_4.addItem(spacerItem)
        self.resetButton = QtWidgets.QPushButton(Dialog)
        self.resetButton.setObjectName("resetButton")
        self.verticalLayout_4.addWidget(self.resetButton)
        self.horizontalLayout.addLayout(self.verticalLayout_4)

        self.retranslateUi(Dialog)
        self.tabWidget.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "變更結構元⋯"))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.threeSize), _translate("Dialog", "3×3"))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.fiveSize), _translate("Dialog", "5×5"))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.sevenSize), _translate("Dialog", "7×7"))
        self.okButton.setText(_translate("Dialog", "確認"))
        self.okButton.setShortcut(_translate("Dialog", "Return"))
        self.cancelButton.setText(_translate("Dialog", "取消"))
        self.resetButton.setText(_translate("Dialog", "置零"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog()
    ui.setupUi(Dialog)
    Dialog.show()
    sys.exit(app.exec_())
