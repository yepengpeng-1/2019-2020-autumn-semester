#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>

void framebuffer_size_callback( GLFWwindow* window, int width, int height );

int  main() {
    glfwInit();
	// Initialize the glfw library

    glfwWindowHint( GLFW_CONTEXT_VERSION_MAJOR, 3 );
    glfwWindowHint( GLFW_CONTEXT_VERSION_MINOR, 3 );
	// Declare the glfw version we're using: v3.3

    glfwWindowHint( GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE );
	// Make glfw runs under Core Profile

	// glfwWindowHint( GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE );
	// macOS Workaround. Unnecessary here

	GLFWwindow* window = glfwCreateWindow( 800, 600, "I'm A Teapot", NULL, NULL );
    if ( window == NULL ) {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent( window );
	
	if ( !gladLoadGLLoader( ( GLADloadproc )glfwGetProcAddress ) ) {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

	glViewport( 0, 0, 800, 600 );

	glfwSetFramebufferSizeCallback( window, framebuffer_size_callback );

	while ( !glfwWindowShouldClose( window ) ) {
        glClearColor( 0.7f, 0.7f, 1.0f, 0.0f );
        glClear( GL_COLOR_BUFFER_BIT );
        // 检查并调用事件，交换缓冲
        glfwPollEvents();
        glfwSwapBuffers( window );
    }

	glfwTerminate();
    return 0;
}

void framebuffer_size_callback( GLFWwindow* window, int width, int height ) {
    glViewport( 0, 0, width, height );
}