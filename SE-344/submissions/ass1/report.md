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

* Windows 10 x64 LTSC 1809 (`17763.737`) 

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
    #include <glad/glad.h>
    #include <GLFW/glfw3.h>
    ```
    
    点按 Debug 运行发现不报错，则说明配置完成。

### 第二部分：测试 OpenGL 环境

#### 操作步骤

12. 在 `main.cpp` 中填入以下代码，将配置管理器的下拉框设定为 `Debug`, `x64`，尝试生成并运行项目。

```c++
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>

void framebuffer_size_callback( GLFWwindow* window, int width, int height );

int  main() {
    glfwInit();
    // 初始化 glfw 库

    glfwWindowHint( GLFW_CONTEXT_VERSION_MAJOR, 3 );
    glfwWindowHint( GLFW_CONTEXT_VERSION_MINOR, 3 );
    // 声明我们使用的 glfw 语义化版本: v3.3

    glfwWindowHint( GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE );
    // 设置 OpenGL 配置文件；这里使用精简的 Core Profile。

    // glfwWindowHint( GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE );
    // macOS 所需要进行的 Workaround。
    // 由于本次 Assignment 使用 Windows 环境，故无需这一行。

   // 创建 glfw 窗口
    GLFWwindow* window = glfwCreateWindow( 800, 600, "I'm A Teapot", NULL, NULL );
    if ( window == NULL ) {
        // 检查创建窗口是否成功
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }

    // 设定图形上下文为 window
    glfwMakeContextCurrent( window );

    if ( !gladLoadGLLoader( ( GLADloadproc )glfwGetProcAddress ) ) {
         // 利用 GLAD 来重建函数指针位置
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    // 告诉 OpenGL 渲染窗口的大小
    glViewport( 0, 0, 800, 600 );

    glfwSetFramebufferSizeCallback( window, framebuffer_size_callback );

    while ( !glfwWindowShouldClose( window ) ) {
        glfwSwapBuffers( window );
        glfwPollEvents();
    }

    // 循环终结时，同时终结 glfwTerminate。
    glfwTerminate();
    return 0;
}

// 回调函数，在窗口大小改变时通知 OpenGL
void framebuffer_size_callback( GLFWwindow* window, int width, int height ) {
    glViewport( 0, 0, width, height );
}
```

> ⚠️此段代码系 `glfw` 官方文档提供的环境测试代码，以 `CC BY-SA 4.0` 授权。注释为自行补充。

13. 预期结果：出现了一个纯黑的、`800×600` 大小的窗口。

#### 屏幕截图

![teapot.main.png](https://raw.githubusercontent.com/yuetsin/private-image-repo/master/2019/09/20-10-12-27-teapot.main.png)

### 第三部分：设置背景色

考虑到我们之后会需要动态改变窗口背景色，并且调节窗口大小需要背景被重新渲染，我们不应该将窗口背景颜色硬编码在 `OpenGL` 启动之前，而应该将其放在渲染循环中（就是上面那个 `while(!glfwShouldClose(window))` 循环里）。因此我们进行下列操作：

#### 操作步骤

14. 在渲染循环代码中加入下列代码：

```c++
// 渲染循环
while(!glfwWindowShouldClose(window))
{
    glClearColor(0.7f, 0.7f, 1.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    // 检查并调用事件，交换缓冲
    glfwPollEvents();
    glfwSwapBuffers(window);
}
```

其中 `glClearColor` 函数用来设置我们所需要使用的笔刷（Brush）颜色，其参数列表为

```c++
void glClearColor(GLclampf red, 
　　　　　　　　    GLclampf green, 
　　　　　　　　　　GLclampf blue, 
　　　　　　　　　　GLclampf alpha);
```

即我们将笔刷颜色设定为了 `alpha = 0.0f`（完全透明）的淡紫色。但此时尚未将其刷上背景，我们需要调用 `glClear(GL_COLOR_BUFFER_BIT)` 函数将其上色。

> Q：为什么这里设置 `alpha` 的值无论是 `0.0f` 还是 `1.0f`，对最终上色的结果没有影响？

> A：见下面的讨论。

事实上，这里 `glClear`所做的事情是「清除颜色缓冲区」，即将缓冲区中原有的颜色值清空，并用 `glClearColor` 所设置的颜色来填充整个屏幕。

通过设置 `glClear` 的参数，我们还可以选择清空深度信息（将参数设定为 `GL_DEPTH_BUFFER_BIT`）或清除贴图信息（将参数设定为 `GL_STENCIL_BUFFER_BIT`）。这是后话。

现在我们就可以看到背景色已经被成功设置，而且在调节窗口大小时，颜色会被重新渲染以充满整个窗口。

#### 屏幕截图

![purple.png](https://raw.githubusercontent.com/yuetsin/private-image-repo/master/2019/09/20-10-28-34-purple.png)

### 第四部分：设定双缓冲

#### 概念：什么是双缓冲？

最直观朴素的渲染机制可能是：每过一个 `Tick` 就计算一次屏幕上所有像素点的信息，并将其填充到显存中以供显卡显示。

但这样就存在一个问题：显示驱动取走数据是一次拿走对应一整个屏幕的像素点信息，但是我们的程序渲染像素点却是一点一点渲染的。这就导致如果我们仅仅按照上面的思路制作渲染器的话，显卡驱动可能会在取走一帧画面时发现这帧画面由**一半填充好的新像素和遗留的一半旧像素**组合在一起，这就导致了画面锯齿，严重的话可能导致画面撕裂。

因此我们在将像素点放入显存中之前，需要先进行一个缓存，待一整幅画面被渲染完毕之后，再将其一并送入缓存才可以。

那么我们就有了另一个思路：在渲染过程中不要将其送入显存，而是将其放在另一块缓冲区中，等所有像素点都渲染完成之后，再将其一并送入显存。

听起来挺不错的，但事实上这就导致每一个像素点都要被移动两次：第一次是渲染完成后立即将其放入的那个缓冲区，第二次是我们将其挪到显卡实际读取的缓冲区。这就带来了严重的时间延迟。

因此我们引出了另一样技术：渲染器和上面一样维护两块缓冲区，但却不做任何缓冲区的拷贝操作。反过来，让显卡驱动来决定从哪一块缓冲区来刷新屏幕；这样在完成一块缓冲区的渲染操作之后，渲染器则无需拷贝缓冲区，只需要通知显卡驱动「切换舞台」，并转向另一块缓冲区进行下一次渲染即可。

这就是双缓冲！

> 双缓冲部分的介绍参考原文来自 Robert Nystrom © 2009-2015

#### 实践

那么我们来给我们的程序引入双缓冲吧！

> GLFW 默认使用双缓冲区。

事实上我们上面的代码已经使用了双缓冲技术了。观察 `glfwSwapBuffers` 函数的名字就大概能猜出来，它的作用就是交换前景（正在被显卡读取的）和背景（正在往里塞数据的）两个缓冲区。

### 第五部分：画茶壶

> Huh I'm a Teapot

#### 第三方开源库使用说明

由于肖老师在布置作业时临时改动了 Assignment 内容，要求画一个茶壶来代替原题目中要求的球。作为 GLUT 的替代品，GLFW 本身并没有预设「画茶壶」这项功能。

又因为 GLUT 已经死透了，因此将选择使用 `FreeGLUT + glew` 的组合来代替上面的 `GLFW + glad` 组合。 

#### 操作步骤

15. 按照第一部分中编译 `glfw` 同样的办法编译 `FreeGLUT` 和 `glew` ，并放置在上述位置。

> 动态链接库文件参见 `ass1/dll/` 目录。

> ⚠️还需要将编译得到的 `freeglutd.dll` 和 `glew32.dll` 放置在 `%SystemRoot%/Windows/System32` 和 `%SystemRoot%/Windows/SysWOW64` 目录下。

16. 现在我们需要用 `FreeGLUT + glew` 重写上面的代码。首先，所有的 `glut` 程序都需要首先初始化这个库。第一行会把 main 函数的两个参数传入，是标准的初始化方法。

```c++
glutInit(&argc, argv);
```

17. 随后我们初始化 `glut` 的显示设置：

```c++
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH);
```

这几个掩码的意思分别是：

| 宏名            | 意义                            |
| ------------- | ----------------------------- |
| `GLUT_RGBA`   | 将窗口设定为 RGBA 彩色模式。这是默认情况下的采用值。 |
| `GLUT_DOUBLE` | 使用双缓冲机制（见上）。                  |
| `GLUT_DEPTH`  | 使用深度缓冲机制。                     |

> Q：什么叫做深度缓冲机制呢？
> 
> A：深度缓冲指的是在生成每一个像素的时候，都把它的深度信息存储在一个缓冲区之中；如果另一个物体也被渲染到同一个像素处，则通过深度缓冲区对二者的深度进行比较，并消隐那个被遮挡的物体。
> 
> 如果这个 OpenGL 程序需要处理多个物体间的遮挡关系，那么大概率会需要将 `GLUT_DEPTH` 掩码设定上。

18. 接下来我们开启一个新窗口：通过下列两个函数调用决定窗口的尺寸以及标题文字。

```c++
    glutInitWindowSize(windowWidth, windowHeight);
    // windowWidth 和 windowHeight 是两个静态变量，用于维护窗口当前大小

    glutCreateWindow("I'm a Teapot");
    // 执行此步骤之后，窗口被正式创建
```

19. 接下来我们设定背景颜色。此处和第 14 步中的操作完全一样。

```c++
glClearColor(0.7f, 0.7f, 1.0f, 1.0f);
```

> 因此上面的问题也留到了这里：为什么 `glClearColor` 设定透明背景的代码不起作用呢？

> 事实上这个函数的实现中，调节 alpha 值并非用于生成另一种纯色，而是为了实现「半透明效果」，即可以透过背景看到半透明的其他窗口内容，类似于 `Windows 8` 之前版本中的 Aero 效果。为了使这项功能有效，我们需要使用

```c++
glEnable(GL_BLEND)
```

```c++
glBlendFunc( GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA );
 // = color * alpha + background * (1-alpha)
```

> 来表明如何计算被遮挡窗口的颜色。

> ⚠️Windows 平台不支持此项功能，需要在 `Linux` 下执行测试。

![](https://github.com/yuetsin/private-image-repo/blob/master/2019/09/rHewB.png?raw=true)

> 最终效果如上图所示。

20. 最后我们需要调用函数
    
    ```text
    glutMainLoop();
    ```

        来开始 GLUT 的循环。

21. 现在我们回到 Windows。由于 Windows 平台下背景透明功能不起作用，我们现在能看到的窗口如图所示。

![](https://github.com/yuetsin/private-image-repo/blob/master/2019/09/image.teapot.png?raw=true)

21. 由于题目要求我们需要动态进行渲染生成，因此我们注册了两个回调函数：`onWindowResized` 和 `onRender`。其中窗口被重新拉伸之后将调用函数 `onWindowResized`，当需要重新渲染下一帧画面时调用 `onRender`。

```c++

static int windowWidth = 1280, windowHeight = 720;

void onWindowResized(int w, int h)
{
    // 更新窗口尺寸变量
	windowWidth = w, windowHeight = h;
}

void onRender()
{
    // 清除上一帧的缓存
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
    // 启用双帧缓存
	glutSwapBuffers();
}

int main() {
    ...
    glutReshapeFunc(onWindowResized);
	glutDisplayFunc(onRender);
    ...
}
```

22. 完成之后，我们可以开始画 Teapot 了。在 onRender 函数中我们绘制一帧茶壶，我们需要动态计算出合适的茶壶大小，并使用 `glutSolidTeapot` 函数将其画到画面中。

```c++
int teaPotSize = int(std::min(int(windowWidth * 9.0 / 16.0), windowHeight));
glViewport((windowWidth - teaPotSize) / 2, (windowHeight - teaPotSize) / 2, teaPotSize, teaPotSize);
glutWireTeapot(0.4f);
```

我们来逐行分析代码：其中第一行计算出按照 16: 9 重分配比例之后窗口的较短边作为 Restriction；然后将 ViewPort 设定在这个画幅的正中央处；最后按照 0.4 倍的比例画出线框茶壶。这个算法经过测试可以保证在任何窗口比例下显示合理的画面。

![](https://github.com/yuetsin/private-image-repo/blob/master/2019/09/resize.1.png?raw=true)

![](https://github.com/yuetsin/private-image-repo/blob/master/2019/09/resize.2.png?raw=true)

23. 最后，为了以后实现变色功能，我们将硬编码的颜色值抽离出来成为变量，并在绘制茶壶之前先设置笔刷颜色：

```c++
static GLfloat teapotRed = 0.5f;
static GLfloat teapotGreen = 0.5f;
static GLfloat teapotBlue = 0.7f;

static GLfloat bgRed = 0.7f;
static GLfloat bgGreen = 0.7f;
static GLfloat bgBlue = 1.0f;

static void onRender() {
    ...
    glColor3f(teapotRed, teapotGreen, teapotBlue);
    ...
}
```

此部分完成后的效果如下图所示。

![](https://github.com/yuetsin/private-image-repo/blob/master/2019/09/full.res.png?raw=true)


