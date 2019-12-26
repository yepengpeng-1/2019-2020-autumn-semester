#include <glad/glad.h>
// this comment avoids stupid clang-format's auto-reordering #includes
#include <GLFW/glfw3.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "stb_image.h"

#include <iostream>

#include "IndexBuffer.h"
#include "PlyReaderWrapped.hpp"
#include "Renderer.h"
#include "Shader.cpp"
#include "VertexArray.h"
#include "VertexBuffer.h"
#include "VertexBufferLayout.h"
#include "utilities.h"

// initialize test scene
SceneIndex scene = TEST_SCENE;

#include "ModelKits.hpp"

modelRecordT model = nullptr;

size_t windowWidth = 1600, windowHeight = 900;

int main() {

    if ( !glfwInit() ) {
        std::cout << "GLFW could not be initialized... Aborting!!";
        exit( -1 );
    }

    glfwWindowHint( GLFW_CONTEXT_VERSION_MINOR, 3 );
    glfwWindowHint( GLFW_CONTEXT_VERSION_MAJOR, 3 );
    glfwWindowHint( GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE );
    glfwWindowHint( GLFW_RESIZABLE, GLFW_FALSE );

    GLFWwindow* window = glfwCreateWindow( windowWidth, windowHeight, "Grave Robber", nullptr, nullptr );
    if ( !window ) {
        std::cout << "Failed to create a window... Aborting!!";
        glfwTerminate();
        exit( -1 );
    }
    glfwMakeContextCurrent( window );

    if ( !gladLoadGLLoader( ( GLADloadproc )glfwGetProcAddress ) ) {
        std::cout << "Failed to initialize GLAD... Aborting!!";
        glfwTerminate();
        exit( -1 );
    }

    glViewport( 0, 0, windowWidth, windowHeight );

    model = &book_model;
    // model = read_ply_file( "./models/book.ply" );

    while ( !glfwWindowShouldClose( window ) ) {

        switch ( scene ) {
        case TEST_SCENE: {
            // create shader programs
            unsigned int programId      = CreateShaderProgram();
            unsigned int lightProgramId = CreateLightShaderProgram();

            // float* buffer = book_model;

            unsigned int vaoId, lightVaoId, bufferId, indexBufferId;
            unsigned int diffuseMap, specularMap, emissionMap;

            //////////////////////////////////// object settings //////////////////////////////////////

            glUseProgram( programId );

            VertexArray        cubeVertexArray;
            VertexBuffer       cubeVertexBuffer( model->buffer, model->size );
            VertexBufferLayout cubeVertexLayout( 8 * sizeof( float ) );
            cubeVertexLayout.Push< float >( 0, 3, GL_FLOAT, 0 );                    // position vertex attribute
            cubeVertexLayout.Push< float >( 1, 3, GL_FLOAT, sizeof( float ) * 5 );  // normal vertex attribute
            cubeVertexLayout.Push< float >( 2, 2, GL_FLOAT, sizeof( float ) * 3 );  // texture coordinates
            cubeVertexArray.AddAttributes( cubeVertexBuffer, cubeVertexLayout );

            glGenTextures( 1, &diffuseMap );
            glActiveTexture( GL_TEXTURE0 );
            glBindTexture( GL_TEXTURE_2D, diffuseMap );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
            int            width, height, nrChannels;
            unsigned char* data = stbi_load( "./maps/title.png", &width, &height, &nrChannels, 0 );
            if ( data ) {
                glTexImage2D( GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data );
                glGenerateMipmap( GL_TEXTURE_2D );
            }
            else {
                std::cout << "\nFailed to load texture..." << std::endl;
            }
            stbi_image_free( data );

            glGenTextures( 1, &specularMap );
            glActiveTexture( GL_TEXTURE1 );
            glBindTexture( GL_TEXTURE_2D, specularMap );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
            data = stbi_load( "./maps/title_spec.png", &width, &height, &nrChannels, 0 );
            if ( data ) {
                glTexImage2D( GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data );
                glGenerateMipmap( GL_TEXTURE_2D );
            }
            else {
                std::cout << "\nFailed to load specular texture..." << std::endl;
            }
            stbi_image_free( data );

            glGenTextures( 1, &emissionMap );
            glActiveTexture( GL_TEXTURE2 );
            glBindTexture( GL_TEXTURE_2D, emissionMap );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
            data = stbi_load( "./maps/title_spec_empty.png", &width, &height, &nrChannels, 0 );
            if ( data ) {
                glTexImage2D( GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data );
                glGenerateMipmap( GL_TEXTURE_2D );
            }
            else {
                std::cout << "\nFailed to load specular texture..." << std::endl;
            }
            stbi_image_free( data );

            cubeVertexBuffer.Unbind();
            cubeVertexArray.Unbind();
            glUseProgram( 0 );

            ////////////////////////////////////////////////////////////////////////////////////////////

            /////////////////////////////////// light settings /////////////////////////////////////////

            glUseProgram( lightProgramId );
            VertexArray        lightVertexArray;
            VertexBufferLayout lightVertexLayout( 8 * sizeof( float ) );
            lightVertexLayout.Push< float >( 0, 3, GL_FLOAT, 0 );  // position vertex attribute
            cubeVertexArray.AddAttributes( cubeVertexBuffer, lightVertexLayout );
            lightVertexArray.Unbind();
            glUseProgram( 0 );

            /////////////////////////////////////////////////////////////////////////////////////////////

            glm::mat4 projection = glm::perspective( glm::radians( 45.0f ), 1000.0f / 600.0f, 0.1f, 100.0f );

            glm::mat4 view = glm::mat4( 1.0f );
            view           = glm::translate( view, glm::vec3( 0.0f, 0.0f, -3.0f ) );

            glm::mat4 model;
            glm::mat3 normalMatrix;

            float lightPosition[] = { 0.0f, 0.5f, 1.0f };
            float objectColor[]   = { 1.0f, 1.0f, 1.0f };
            float lightColor[]    = { 1.0f, 1.0f, 1.0f };
            float eyePosition[]   = { 1.0f, 0.0f, 1.0f };

            glEnable( GL_DEPTH_TEST );

            while ( !glfwWindowShouldClose( window ) ) {
                glClearColor( 0.0f, 0.0f, 0.0f, 1.0f );
                glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

                //////////////////////////////////////////////////////////////////////// OBJECT /////////////////////////////////////////////////////////////////////
                glUseProgram( programId );
                cubeVertexArray.Bind();

                glUniformMatrix4fv( glGetUniformLocation( programId, "projection" ), 1, GL_FALSE, glm::value_ptr( projection ) );
                glUniformMatrix4fv( glGetUniformLocation( programId, "view" ), 1, GL_FALSE, glm::value_ptr( view ) );

                model = glm::mat4( 1.0f );
                model = glm::rotate( model, ( float )glfwGetTime() * glm::radians( 35.0f ), glm::vec3( 0.5f, 1.0f, 0.0f ) );
                glUniformMatrix4fv( glGetUniformLocation( programId, "model" ), 1, GL_FALSE, glm::value_ptr( model ) );

                normalMatrix = glm::mat3( glm::transpose( glm::inverse( model ) ) );
                glUniformMatrix3fv( glGetUniformLocation( programId, "normalMatrix" ), 1, GL_FALSE, glm::value_ptr( normalMatrix ) );

                glUniform3fv( glGetUniformLocation( programId, "objectColor" ), 1, objectColor );
                glUniform3fv( glGetUniformLocation( programId, "lightColor" ), 1, lightColor );
                glUniform3fv( glGetUniformLocation( programId, "lightPosition" ), 1, lightPosition );
                glUniform3fv( glGetUniformLocation( programId, "eyePosition" ), 1, eyePosition );

                glActiveTexture( GL_TEXTURE0 );
                glBindTexture( GL_TEXTURE_2D, diffuseMap );
                glUniform1i( glGetUniformLocation( programId, "material.diffuse" ), 0 );

                glActiveTexture( GL_TEXTURE1 );
                glBindTexture( GL_TEXTURE_2D, specularMap );
                glUniform1i( glGetUniformLocation( programId, "material.specular" ), 1 );

                glActiveTexture( GL_TEXTURE2 );
                glBindTexture( GL_TEXTURE_2D, emissionMap );
                glUniform1i( glGetUniformLocation( programId, "material.emission" ), 2 );

                glUniform1f( glGetUniformLocation( programId, "material.shininess" ), 32.0f );

                glUniform1ui( glGetUniformLocation( programId, "debug" ), GL_FALSE );

                glDrawArrays( GL_TRIANGLES, 0, 36 );

                glUseProgram( 0 );
                cubeVertexArray.Unbind();

                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                //////////////////////////////////////////////////////////////// LIGHT ///////////////////////////////////////////////////////////////////////////////

                glUseProgram( lightProgramId );
                lightVertexArray.Bind();

                glUniformMatrix4fv( glGetUniformLocation( lightProgramId, "projection" ), 1, GL_FALSE, glm::value_ptr( projection ) );
                glUniformMatrix4fv( glGetUniformLocation( lightProgramId, "view" ), 1, GL_FALSE, glm::value_ptr( view ) );

                model = glm::mat4( 1.0f );
                model = glm::translate( model, glm::vec3( lightPosition[ 0 ], lightPosition[ 1 ], lightPosition[ 2 ] ) );
                model = glm::rotate( model, ( float )glfwGetTime() * glm::radians( 35.0f ), glm::vec3( 0.5f, 1.0f, 0.0f ) );
                model = glm::scale( model, glm::vec3( 0.1f ) );
                glUniformMatrix4fv( glGetUniformLocation( lightProgramId, "model" ), 1, GL_FALSE, glm::value_ptr( model ) );

                glUniform1ui( glGetUniformLocation( lightProgramId, "debug" ), GL_FALSE );

                glDrawArrays( GL_TRIANGLES, 0, 36 );

                glPolygonMode( GL_FRONT_AND_BACK, GL_LINE );
                glUniform1ui( glGetUniformLocation( lightProgramId, "debug" ), GL_TRUE );
                glDrawArrays( GL_TRIANGLES, 0, 36 );
                glPolygonMode( GL_FRONT_AND_BACK, GL_FILL );

                lightVertexArray.Unbind();
                glUseProgram( 0 );

                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                glfwPollEvents();
                glfwSwapBuffers( window );
            }
        } break;
        case BOOKTITLE_SCENE:
            break;
        case DARKROOM_SCENE:
            break;
        case STONEHEAP_SCENE:
            break;
        case BOMB_SCENE:
            break;
        case BUDDHA_SCENE:
            break;
        }
    }
    glfwTerminate();
    return 0;
}