# SE-344

## Assignment #2 Report

*   姓名：于喜千
*   学号：`517030910168`
*   任务：Assignment #2

### 实现过程

#### 第一部分：搭建 OpenGL 编程环境

#####环境设定

*   Windows 10 x64 LTSC 1809 (`17763.737`)
*   Visual Studio 2019 Community (`16.2.4`)
*   FreeGLUT

此处，比照 Assignment #1 中的环境设定办理。

#### 第二部分：数据处理

由于本次 Assignment 中的三角形数据来自 `overlapping.tri` 和 `intersecting.tri`，因此我们首先需要实现三角形数据的读取。

##### 标准库使用

这里，主要利用了 C++ 中的 `<fstream>` 和 `<iostream>` 标准库来实现文件数据的读取。

##### 数据格式

在作业提供的 `.tri` 文件中，包含由不定数量的空格符及 ``'\n'`` 分隔的数字；这些数字依次代表了三角形每个顶点的 x、y、z 坐标位置（有符号整数）及 R、G、B 颜色分量（0 ～ 1 之间的浮点数）。

文件以 ``'\n'`` + EOF 结束。

##### 程序结构

相关文件包括 `Triangle.hpp`、`Reader.h`、和 `Reader.cpp`。

在 `Triangle.hpp` 中，定义着 `TrianglePoint` 和 `Triangle` 两个类；他们用于结构化地描述三角形的顶点位置及顶点颜色。同时，提供了默认的无参构造函数及完整构造函数，方便各种形式的调用；同时在构造时还对 R、G、B 颜色分量进行了范围检测和归一化纠错，减少错误调用的可能性。

在 `Reader.cpp` + `Reader.h` 两个文件中，定义了一个名为 `readTriangle` 的参数；它可以通过提供文件名作为参数来读取所有满足上述条件的 `.tri` 文件，并将其放置在 `vector<Triangle>` 中并返回。这就意味着我们可以在 Phase 1 及 Phase 2 中复用这个函数，减少重复工作，提高程序效能。

##### 执行结果

通过断点调试方法，发现程序可以成功处理 `overlapping.tri` 和 `intersecting.tri` 两个 `.tri` 文件，并能正确生成 `Triangle` 对象。

#### 第三部分：三角形绘制

首先，我们引入 `Triangle.hpp` 及 `Reader.h` 头文件来读入所需的文件。

