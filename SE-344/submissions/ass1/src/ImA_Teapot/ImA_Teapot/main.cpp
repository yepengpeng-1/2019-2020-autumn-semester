#define _CRT_SECURE_NO_WARNINGS
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <vector>
#include <glm/glm/vec2.hpp>
#include <glm/glm/vec3.hpp>
#include "model_loader.h"
using std::vector;

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

	// Read our .obj file
    vector< glm::vec3 > vertices;
    vector< glm::vec2 > uvs;
    vector< glm::vec3 > normals;
    bool res = loadObj( "teapot.obj", vertices, uvs, normals );

	// This will identify our vertex buffer
    GLuint vertexbuffer;

    // Generate 1 buffer, put the resulting identifier in vertexbuffer
    glGenBuffers( 1, &vertexbuffer );

    glBufferData( GL_ARRAY_BUFFER, vertices.size() * sizeof( glm::vec3 ), &vertices[ 0 ], GL_STATIC_DRAW );
    

	while ( !glfwWindowShouldClose( window ) ) {
        glClearColor( 0.7f, 0.7f, 1.0f, 0.0f );
        glClear( GL_COLOR_BUFFER_BIT );

		glEnableVertexAttribArray( 0 );
        glBindBuffer( GL_ARRAY_BUFFER, vertexbuffer );
        glVertexAttribPointer( 0,          // attribute 0. No particular reason for 0, but must match the layout in the shader.
                               3,          // size
                               GL_FLOAT,   // type
                               GL_FALSE,   // normalized?
                               0,          // stride
                               ( void* )0  // array buffer offset
        );
        // Draw the triangle !
        glDrawArrays( GL_TRIANGLES, 0, 3 );  // Starting from vertex 0; 3 vertices total -> 1 triangle
        glDisableVertexAttribArray( 0 );

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