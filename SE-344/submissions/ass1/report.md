# SE-344 Assignment 1 Report

## META-INF

* 姓名：于喜千

* 学号：`517030910168`

* 任务：`Assignment #1`

## 具体工作

### 第一部分：搭建 OpenGL 编程环境

#### 参考文档

* [OpenGL Official](https://www.opengl.org/resources/libraries/glut/)

* [GLFW Official](https://www.glfw.org/)

* [LearnOpenGL Manual](https://learnopengl-cn.github.io/)

#### 环境设定

* Windows 10 LTSC 1809 (`17763.737`)

* Visual Studio 2019 Community (`16.2.4`)

* GLFW (`3.3`)

### 操作步骤

1. 安装 Visual Studio 2019 及其附带的 C++ 工具链；

2. 安装 Windows 版 CMake（GUI）；

3. 下载 glfw-3.3 Windows 版源代码，在 Configure 中配置所使用的 Visual Studio 版本（这里使用的版本号是 16，即 2019 版本），并点击 Generate 生成 Visual Studio 解决方案；

> 生成日志参见 `/ass1/logs/cmake.logs`。

4. 使用 Visual Studio 开启 `/build/GLFW.sln`解决方案文件，按下 `Ctrl + Shift + B`组合键来生成解决方案。

> 编译日志参见`/ass1/logs/vs.logs`。

5. 在 `/src/Debug`目录中发现刚刚编译完成的 `glfw3.lib`二进制文件，将其拷贝到方便操作的目录下待用。同时将解压出来的 `/glfw/include` 文件夹中的内容也拷贝到该目录待用。

> 此二进制文件参见`/ass1/bin/glfw3.lib`。

6. 再次打开 Visual Studio，新建一个 Visual C++ 空项目（Empty Project），将其存放在 `/ass1/src/`目录下，命名为`ImA_Teapot`。

7. 在解决方案资源管理器中右击`ImA_Teapot`项目，在弹出的右键菜单中点按「属性」，在弹出窗口中依次寻找「配置属性」、「VC++ 目录」，在「包含目录」和「库目录」两个字段中加入`glfw3.lib`所在的绝对路径，如下图所示，并点按「应用」来保存更改。
   
   ![configure.lib.path.png](https://raw.githubusercontent.com/yuetsin/private-image-repo/master/2019/09/14-14-30-51-configure.lib.path.png)

8. 同样在这个窗口，依次寻找并点按「配置属性」「链接器」「输入」项，在右侧字段列表中寻找「附加依赖」项字段，将我们刚刚编译的`glfw3.lib`和 OpenGL 库文件 `opengl32.lib` 加入该字段中来，如下图所示，并点按「应用」来保存更改。
   
   ![configure.dependencies.png](https://raw.githubusercontent.com/yuetsin/private-image-repo/master/2019/09/14-14-35-08-configure.dependencies.png)

9. 开启 [GLAD 在线服务](https://glad.dav1d.de)，选择刚刚配置的 glfw 库版本（3.3），并将 Profile 项设定为 Core（仅核心），其余部分按默认配置，并点按 Generate 生成。随后下载生成的 `glad.zip`，将其解压后放置在项目目录附近。

> GLAD 所做的工作是在众多 OpenGL 驱动版本的函数上层提供一个抽象，避免我们处理许多跨平台的问题（如，获取函数指针等）。

> 生成的 GLAD 库代码参见 `/ass1/lib/glad` 文件夹。

10. 将`/glad/include`目录下的两个文件夹复制到第 7 步中制定的文件夹中，并将`glad/src`目录下的`glad.c`文件加入解决方案中。

11. 新建一个 `main.cpp`文件，尝试加入以下代码：
    
    ```c++
    #include <glad/glad.h>#include <GLFW/glfw3.h>
    ```
    
    点按 Debug 运行发现不报错，则说明配置完成。

### 第二部分：测试 OpenGL 环境

#### 操作步骤

12. 在 `main.cpp` 中填入以下代码，将配置管理器的下拉框设定为 `Debug`, `x64`，尝试生成并运行项目。

```c++
#include <glad/glad.h>#include <GLFW/glfw3.h>#include <iostream>void framebuffer_size_callback( GLFWwindow* window, int width, int height );int  main() {    glfwInit();	// Initialize the glfw library    glfwWindowHint( GLFW_CONTEXT_VERSION_MAJOR, 3 );    glfwWindowHint( GLFW_CONTEXT_VERSION_MINOR, 3 );	// Declare the glfw version we're using: v3.3    glfwWindowHint( GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE );	// Make glfw runs under Core Profile	// glfwWindowHint( GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE );	// macOS Workaround. Unnecessary here	GLFWwindow* window = glfwCreateWindow( 800, 600, "I'm A Teapot", NULL, NULL );    if ( window == NULL ) {        std::cout << "Failed to create GLFW window" << std::endl;        glfwTerminate();        return -1;    }    glfwMakeContextCurrent( window );		if ( !gladLoadGLLoader( ( GLADloadproc )glfwGetProcAddress ) ) {        std::cout << "Failed to initialize GLAD" << std::endl;        return -1;    }	glViewport( 0, 0, 800, 600 );	glfwSetFramebufferSizeCallback( window, framebuffer_size_callback );	while ( !glfwWindowShouldClose( window ) ) {        glfwSwapBuffers( window );        glfwPollEvents();    }	glfwTerminate();    return 0;}void framebuffer_size_callback( GLFWwindow* window, int width, int height ) {    glViewport( 0, 0, width, height );}
```








