// GraveRobber.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#define _CRT_SECURE_NO_WARNINGS

#include <GL/glew.h>
// avoiding idiot clang-format from adjusting #include sequence
#include <GL/freeglut.h>
#include <algorithm>
#include <ctime>
#include <glm/glm/glm.hpp>
#include <glm/glm/gtc/matrix_transform.hpp>
#include <glm/glm/gtc/type_ptr.hpp>
#include <iostream>
#include <random>
#include <vector>

// #include "Triangle/Triangle.hpp"
#include "Camera.hpp"
#include "PlyLoader/tinyply.h"
#include "PlyReaderWrapped.hpp"
#include "Shader.hpp"
#include "Texture/TextureMapper.hpp"

// avoiding idiot clang-format from adjusting #include sequence
#include "utilities.h"

// #include "ObjLoader/tiny_obj_loader.h"
using namespace tinyply;

// camera
Camera camera( glm::vec3( 0.0f, 0.0f, 3.0f ), glm::vec3( 0.0f, 1.0f, 0.0f ) );

unsigned int VBO, cubeVAO;

Shader lightingShader, lampShader;

// initialize with the test scene
SceneIndex              scene = TEST_SCENE;
std::vector< triangle > fragments;

// window frame issues
static int windowWidth = 768, windowHeight = 768;

static void onWindowResized( int w, int h ) {
    windowWidth = w, windowHeight = h;
    glViewport( 0, 0, w, h );

    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();
}

// rotation issues
static GLfloat rotationX = 0.0f;
static GLfloat rotationY = 0.0f;
static GLfloat rotationZ = 0.0f;

// lighting
glm::vec3 lightPos( 1.0f, 0.0f, 0.0f );

static GLuint material = unsigned( -1 );

static void updateRotation() {

    auto speed = rand() / float( RAND_MAX ) - 0.5f;
    rotationX -= speed;
    rotationY -= speed;
    rotationZ -= speed;

    if ( rotationX >= 360.0 ) {
        rotationX -= 360.0;
    }
    else if ( rotationX < 0.0 ) {
        rotationX += 360.0;
    }

    if ( rotationY >= 360.0 ) {
        rotationY -= 360.0;
    }
    else if ( rotationY < 0.5 ) {
        rotationY += 360.0;
    }

    if ( rotationZ >= 360.0 ) {
        rotationZ -= 360.0;
    }
    else if ( rotationZ < 0.0 ) {
        rotationZ += 360.0;
    }

    camera.Yaw += speed;
    camera.Pitch += speed;
    camera.ProcessMouseMovement( speed, speed );
}

// random generator issues
bool init = true;

static int random_int() {
    if ( init ) {
        srand( unsigned( time( 0 ) ) );
        init = false;
    }
    return rand();
}

static double random_float() {
    if ( init ) {
        srand( time( 0 ) );
        init = false;
    }
    return double( rand() ) / RAND_MAX;
}

static void giveRandomBrush() {
    glColor3d( random_float(), random_float(), random_float() );
}

inline float3 sub( float3 a, float3 b ) {
    auto r = float3();
    r.x    = a.x - b.x;
    r.y    = a.y - b.y;
    r.z    = a.z - b.z;

    return r;
}

std::vector< float3 > tangents, bitangents;

static void computeTangentBasis() {
    tangents.clear();
    bitangents.clear();

    for ( size_t i = 0; i < fragments.size(); ++i ) {
        auto triangle = fragments[ i ];

        // calculates two lines in the triangle
        auto s1 = sub( triangle.b, triangle.a ), s2 = sub( triangle.c, triangle.a );

        // float2 uv1, uv2;

        // // points towards y axis
        // uv1.x = 0.0, uv1.y = 1.0;

        // // points towards x axis
        // uv2.x = 1.0, uv2.y = 0.0;

        auto tangent   = s2;
        auto bitangent = s1;

        tangents.push_back( s2 );
        bitangents.push_back( s1 );
    }
}

// RenderQuad() Renders a 1x1 quad in NDC
GLuint quadVAO = 0;
GLuint quadVBO;
void   RenderQuad() {
    if ( quadVAO == 0 ) {
        // positions
        glm::vec3 pos1( -1.0, 1.0, 0.0 );
        glm::vec3 pos2( -1.0, -1.0, 0.0 );
        glm::vec3 pos3( 1.0, -1.0, 0.0 );
        glm::vec3 pos4( 1.0, 1.0, 0.0 );
        // texture coordinates
        glm::vec2 uv1( 0.0, 1.0 );
        glm::vec2 uv2( 0.0, 0.0 );
        glm::vec2 uv3( 1.0, 0.0 );
        glm::vec2 uv4( 1.0, 1.0 );
        // normal vector
        glm::vec3 nm( 0.0, 0.0, 1.0 );

        // calculate tangent/bitangent vectors of both triangles
        glm::vec3 tangent1, bitangent1;
        glm::vec3 tangent2, bitangent2;
        // - triangle 1
        glm::vec3 edge1    = pos2 - pos1;
        glm::vec3 edge2    = pos3 - pos1;
        glm::vec2 deltaUV1 = uv2 - uv1;
        glm::vec2 deltaUV2 = uv3 - uv1;

        GLfloat f = 1.0f / ( deltaUV1.x * deltaUV2.y - deltaUV2.x * deltaUV1.y );

        tangent1.x = f * ( deltaUV2.y * edge1.x - deltaUV1.y * edge2.x );
        tangent1.y = f * ( deltaUV2.y * edge1.y - deltaUV1.y * edge2.y );
        tangent1.z = f * ( deltaUV2.y * edge1.z - deltaUV1.y * edge2.z );
        tangent1   = glm::normalize( tangent1 );

        bitangent1.x = f * ( -deltaUV2.x * edge1.x + deltaUV1.x * edge2.x );
        bitangent1.y = f * ( -deltaUV2.x * edge1.y + deltaUV1.x * edge2.y );
        bitangent1.z = f * ( -deltaUV2.x * edge1.z + deltaUV1.x * edge2.z );
        bitangent1   = glm::normalize( bitangent1 );

        // - triangle 2
        edge1    = pos3 - pos1;
        edge2    = pos4 - pos1;
        deltaUV1 = uv3 - uv1;
        deltaUV2 = uv4 - uv1;

        f = 1.0f / ( deltaUV1.x * deltaUV2.y - deltaUV2.x * deltaUV1.y );

        tangent2.x = f * ( deltaUV2.y * edge1.x - deltaUV1.y * edge2.x );
        tangent2.y = f * ( deltaUV2.y * edge1.y - deltaUV1.y * edge2.y );
        tangent2.z = f * ( deltaUV2.y * edge1.z - deltaUV1.y * edge2.z );
        tangent2   = glm::normalize( tangent2 );

        bitangent2.x = f * ( -deltaUV2.x * edge1.x + deltaUV1.x * edge2.x );
        bitangent2.y = f * ( -deltaUV2.x * edge1.y + deltaUV1.x * edge2.y );
        bitangent2.z = f * ( -deltaUV2.x * edge1.z + deltaUV1.x * edge2.z );
        bitangent2   = glm::normalize( bitangent2 );

        GLfloat quadVertices[] = { // Positions            // normal         // TexCoords  // Tangent                          // Bitangent
                                   pos1.x, pos1.y, pos1.z, nm.x, nm.y, nm.z, uv1.x, uv1.y, tangent1.x, tangent1.y, tangent1.z, bitangent1.x, bitangent1.y, bitangent1.z,
                                   pos2.x, pos2.y, pos2.z, nm.x, nm.y, nm.z, uv2.x, uv2.y, tangent1.x, tangent1.y, tangent1.z, bitangent1.x, bitangent1.y, bitangent1.z,
                                   pos3.x, pos3.y, pos3.z, nm.x, nm.y, nm.z, uv3.x, uv3.y, tangent1.x, tangent1.y, tangent1.z, bitangent1.x, bitangent1.y, bitangent1.z,

                                   pos1.x, pos1.y, pos1.z, nm.x, nm.y, nm.z, uv1.x, uv1.y, tangent2.x, tangent2.y, tangent2.z, bitangent2.x, bitangent2.y, bitangent2.z,
                                   pos3.x, pos3.y, pos3.z, nm.x, nm.y, nm.z, uv3.x, uv3.y, tangent2.x, tangent2.y, tangent2.z, bitangent2.x, bitangent2.y, bitangent2.z,
                                   pos4.x, pos4.y, pos4.z, nm.x, nm.y, nm.z, uv4.x, uv4.y, tangent2.x, tangent2.y, tangent2.z, bitangent2.x, bitangent2.y, bitangent2.z
        };
        // Setup plane VAO
        glGenVertexArrays( 1, &quadVAO );
        glGenBuffers( 1, &quadVBO );
        glBindVertexArray( quadVAO );
        glBindBuffer( GL_ARRAY_BUFFER, quadVBO );
        glBufferData( GL_ARRAY_BUFFER, sizeof( quadVertices ), &quadVertices, GL_STATIC_DRAW );
        glEnableVertexAttribArray( 0 );
        glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, 14 * sizeof( GLfloat ), ( GLvoid* )0 );
        glEnableVertexAttribArray( 1 );
        glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, 14 * sizeof( GLfloat ), ( GLvoid* )( 3 * sizeof( GLfloat ) ) );
        glEnableVertexAttribArray( 2 );
        glVertexAttribPointer( 2, 2, GL_FLOAT, GL_FALSE, 14 * sizeof( GLfloat ), ( GLvoid* )( 6 * sizeof( GLfloat ) ) );
        glEnableVertexAttribArray( 3 );
        glVertexAttribPointer( 3, 3, GL_FLOAT, GL_FALSE, 14 * sizeof( GLfloat ), ( GLvoid* )( 8 * sizeof( GLfloat ) ) );
        glEnableVertexAttribArray( 4 );
        glVertexAttribPointer( 4, 3, GL_FLOAT, GL_FALSE, 14 * sizeof( GLfloat ), ( GLvoid* )( 11 * sizeof( GLfloat ) ) );
    }
    glBindVertexArray( quadVAO );
    glDrawArrays( GL_TRIANGLES, 0, 6 );
    glBindVertexArray( 0 );
}

GLfloat light_specular[] = { 1.0, 1.0, 1.0, 1.0 };

float vertices[] = { 0.89f,  1.01f,  -0.12f, 0.00f,  0.00f,  -1.00f, 1.00f,  0.99f,  0.89f,  -1.02f, -0.12f, 0.00f,  0.00f,  -1.00f, 0.01f,  0.99f,  -0.90f, -1.02f, -0.12f, 0.00f,  0.00f,  -1.00f,
                     0.00f,  -0.01f, -0.90f, 1.01f,  -0.12f, 0.00f,  -0.00f, -1.00f, 1.00f,  -0.01f, 0.89f,  1.01f,  -0.11f, 0.00f,  1.00f,  -0.00f, 0.99f,  1.00f,  0.89f,  1.01f,  -0.12f, 0.00f,
                     1.00f,  -0.00f, 1.00f,  0.99f,  -0.90f, 1.01f,  -0.12f, 0.00f,  1.00f,  -0.00f, 1.00f,  -0.01f, -0.90f, 1.01f,  -0.11f, 0.00f,  1.00f,  0.00f,  1.00f,  -0.00f, -0.90f, -1.02f,
                     -0.12f, -1.00f, 0.00f,  0.00f,  0.00f,  -0.01f, -0.90f, -1.02f, -0.11f, -1.00f, 0.00f,  0.00f,  0.00f,  0.00f,  -0.90f, 1.01f,  -0.11f, -1.00f, 0.00f,  0.00f,  1.00f,  -0.00f,
                     -0.90f, 1.01f,  -0.12f, -1.00f, 0.00f,  0.00f,  1.00f,  -0.01f, 0.89f,  -1.02f, -0.12f, -0.00f, -1.00f, -0.00f, 0.01f,  0.99f,  0.89f,  -1.02f, -0.11f, -0.00f, -1.00f, -0.00f,
                     0.01f,  0.99f,  -0.90f, -1.02f, -0.11f, -0.00f, -1.00f, -0.00f, 0.00f,  0.00f,  -0.90f, -1.02f, -0.12f, -0.00f, -1.00f, 0.00f,  0.00f,  -0.01f, 0.89f,  1.01f,  -0.12f, 1.00f,
                     -0.00f, 0.00f,  1.00f,  0.99f,  0.89f,  1.01f,  -0.11f, 1.00f,  -0.00f, 0.00f,  0.99f,  1.00f,  0.89f,  -1.02f, -0.11f, 1.00f,  -0.00f, 0.00f,  0.01f,  0.99f,  0.89f,  -1.02f,
                     -0.12f, 1.00f,  -0.00f, 0.00f,  0.01f,  0.99f,  0.89f,  1.01f,  0.12f,  -0.00f, 0.00f,  1.00f,  0.17f,  0.00f,  -0.90f, 1.01f,  0.12f,  -0.00f, 0.00f,  1.00f,  0.82f,  -0.01f,
                     -0.90f, -1.02f, 0.12f,  -0.00f, 0.00f,  1.00f,  0.83f,  1.00f,  0.89f,  -1.02f, 0.12f,  0.00f,  -0.00f, 1.00f,  0.18f,  0.99f,  0.89f,  1.01f,  0.11f,  1.00f,  -0.00f, 0.00f,
                     0.00f,  0.00f,  0.89f,  1.01f,  0.12f,  1.00f,  -0.00f, 0.00f,  0.06f,  0.08f,  0.89f,  -1.02f, 0.12f,  1.00f,  -0.00f, 0.00f,  0.07f,  0.85f,  0.89f,  -1.02f, 0.11f,  1.00f,
                     -0.00f, -0.00f, 0.00f,  0.91f,  0.89f,  -1.02f, 0.11f,  -0.00f, -1.00f, -0.00f, 0.00f,  0.91f,  0.89f,  -1.02f, 0.12f,  -0.00f, -1.00f, -0.00f, 0.07f,  0.85f,  -0.90f, -1.02f,
                     0.12f,  -0.00f, -1.00f, -0.00f, 0.84f,  0.92f,  0.89f,  -1.02f, 0.11f,  -0.00f, -1.00f, -0.00f, 0.00f,  0.91f,  -0.90f, -1.02f, 0.12f,  -0.00f, -1.00f, -0.00f, 0.84f,  0.92f,
                     -0.90f, -1.02f, 0.11f,  -0.00f, -1.00f, -0.00f, 0.90f,  1.00f,  -0.90f, -1.02f, 0.11f,  -1.00f, 0.00f,  -0.00f, 0.90f,  1.00f,  -0.90f, -1.02f, 0.12f,  -1.00f, 0.00f,  -0.00f,
                     0.84f,  0.92f,  -0.90f, 1.01f,  0.12f,  -1.00f, 0.00f,  -0.00f, 0.83f,  0.15f,  -0.90f, 1.01f,  0.11f,  -1.00f, 0.00f,  -0.00f, 0.90f,  0.09f,  0.89f,  1.01f,  0.12f,  0.00f,
                     1.00f,  -0.00f, 0.06f,  0.08f,  0.89f,  1.01f,  0.11f,  0.00f,  1.00f,  -0.00f, 0.00f,  0.00f,  -0.90f, 1.01f,  0.11f,  0.00f,  1.00f,  -0.00f, 0.90f,  0.09f,  -0.90f, 1.01f,
                     0.12f,  0.00f,  1.00f,  0.00f,  0.83f,  0.15f,  0.89f,  -1.02f, -0.11f, 1.00f,  0.00f,  -0.00f, 0.01f,  0.99f,  0.89f,  1.01f,  -0.11f, 1.00f,  0.00f,  -0.00f, 0.99f,  1.00f,
                     0.89f,  1.01f,  0.11f,  1.00f,  0.00f,  -0.00f, 0.00f,  0.00f,  0.89f,  -1.02f, -0.11f, 1.00f,  -0.00f, 0.00f,  0.01f,  0.99f,  0.89f,  1.01f,  0.11f,  1.00f,  -0.00f, 0.00f,
                     0.00f,  0.00f,  0.89f,  -1.02f, 0.11f,  1.00f,  -0.00f, 0.00f,  0.00f,  0.91f };

// render callback function issues
static void onRender() {
    // do some rendering stuff
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

    switch ( scene ) {
    case TEST_SCENE: {
        glLoadIdentity();

        updateRotation();

        // shading states
        // glShadeModel( GL_SMOOTH );
        // glColor4f( 1.0f, 1.0f, 1.0f, 1.0f );
        // glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );

        if ( material == unsigned( -1 ) ) {
            material = TM::loadTexture( "./mappings/title.jpg" );
        }

        // render
        // ------
        glClearColor( 0.1f, 0.1f, 0.1f, 1.0f );
        glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

        // be sure to activate shader when setting uniforms/drawing objects
        lightingShader.use();
        lightingShader.setVec3( "light.position", lightPos );
        lightingShader.setVec3( "viewPos", camera.Position );

        // light properties
        lightingShader.setVec3( "light.ambient", 0.2f, 0.2f, 0.2f );
        lightingShader.setVec3( "light.diffuse", 0.5f, 0.5f, 0.5f );
        lightingShader.setVec3( "light.specular", 1.0f, 1.0f, 1.0f );

        // material properties
        lightingShader.setVec3( "material.specular", 0.5f, 0.5f, 0.5f );
        lightingShader.setFloat( "material.shininess", 64.0f );

        // view/projection transformations
        glm::mat4 projection = glm::perspective( glm::radians( camera.Zoom ), ( float )windowWidth / ( float )windowHeight, 0.1f, 100.0f );
        glm::mat4 view       = camera.GetViewMatrix();
        lightingShader.setMat4( "projection", projection );
        lightingShader.setMat4( "view", view );

        // world transformation
        glm::mat4 model = glm::mat4( 1.0f );
        lightingShader.setMat4( "model", model );

        // bind diffuse map
        glActiveTexture( GL_TEXTURE0 );
        glBindTexture( GL_TEXTURE_2D, material );

        glBindVertexArray( cubeVAO );
        glBegin( GL_TRIANGLES );
        // giveRandomBrush();
        int counter = 1;

        for ( const auto& i : fragments ) {
            if ( counter == 11 ) {
                glTexCoord2f( 1.0f, 0.0f );
                auto point = i.a;
                // glColor3d(point.r, point.g, point.b);
                // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
                glVertex3d( point.x, point.y, point.z );

                glTexCoord2f( 0.0f, 0.0f );
                point = i.b;
                // glColor3d(point.r, point.g, point.b);
                // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
                glVertex3d( point.x, point.y, point.z );

                glTexCoord2f( 0.0f, 1.0f );
                point = i.c;
                // glColor3d(point.r, point.g, point.b);
                // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
                glVertex3d( point.x, point.y, point.z );

                // std::cout << "draw a triangle #" << counter << std::endl;
            }
            else if ( counter == 12 ) {
                glTexCoord2f( 1.0f, 0.0f );
                auto point = i.a;
                // glColor3d(point.r, point.g, point.b);
                // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
                glVertex3d( point.x, point.y, point.z );

                glTexCoord2f( 0.0f, 1.0f );
                point = i.b;
                // glColor3d(point.r, point.g, point.b);
                // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
                glVertex3d( point.x, point.y, point.z );

                glTexCoord2f( 1.0f, 1.0f );
                point = i.c;
                // glColor3d(point.r, point.g, point.b);
                // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
                glVertex3d( point.x, point.y, point.z );

                // std::cout << "draw a triangle #" << counter << std::endl;
            }
            else {
                auto point = i.a;
                // glColor3d(point.r, point.g, point.b);
                // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
                glVertex3d( point.x, point.y, point.z );

                point = i.b;
                // glColor3d(point.r, point.g, point.b);
                // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
                glVertex3d( point.x, point.y, point.z );

                point = i.c;
                // glColor3d(point.r, point.g, point.b);
                // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
                glVertex3d( point.x, point.y, point.z );

                // std::cout << "draw a triangle #" << counter << std::endl;
            }
            counter += 1;
        }
        // RenderQuad();
        glEnd();
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

    glutSwapBuffers();
}

int main( int argc, char** argv ) {
    std::cout << "Assignment #4 initializing\n";

    // fragments = read_ply_file("./happy_recon/happy_vrip_res4.ply");
    fragments = read_ply_file( "./models/book.ply", 0.8f );

    // Setup and compile our shaders
    // bookShader = Shader("book.vs", "book.frag");

    glutInit( &argc, argv );

    glutInitDisplayMode( GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH );

    glutInitWindowSize( windowWidth, windowHeight );
    onWindowResized( windowWidth, windowHeight );
    glutCreateWindow( "GraveRobber" );

    glutReshapeFunc( onWindowResized );

    glutDisplayFunc( onRender );
    glutIdleFunc( onRender );

    glClearDepth( 1.0 );

    glEnable( GL_DEPTH_TEST );

    glDepthFunc( GL_LEQUAL );

    glShadeModel( GL_SMOOTH );

    glClearColor( 0.0, 0.0, 0.0, 1.0f );

    GLenum error = glewInit();
    if ( error != GLEW_OK ) {
        printf( "glew init failure." );
        return 1;
    }

    lightingShader = Shader( "./shader/light.vs", "./shader/light.fs" );
    // lampShader = Shader("./shader/lamp.vs", "./shader/lamp.fs");

    // load textures (we now use a utility function to keep the code more organized)
    // -----------------------------------------------------------------------------
    auto diffuseMap  = TM::loadTexture( "./mappings/title.jpg" );
    auto specularMap = TM::loadTexture( "./mappings/title_NRM.png" );
    // shader configuration
    // --------------------
    lightingShader.use();
    lightingShader.setInt( "material.diffuse", diffuseMap );
    lightingShader.setInt( "material.specular", specularMap );

    // first, configure the cube's VAO (and VBO)

    glGenVertexArrays( 1, &cubeVAO );
    glGenBuffers( 1, &VBO );

    glBindBuffer( GL_ARRAY_BUFFER, VBO );
    glBufferData( GL_ARRAY_BUFFER, sizeof( vertices ), vertices, GL_STATIC_DRAW );

    glBindVertexArray( cubeVAO );
    glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof( float ), ( void* )0 );
    glEnableVertexAttribArray( 0 );
    glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof( float ), ( void* )( 3 * sizeof( float ) ) );
    glEnableVertexAttribArray( 1 );
    glVertexAttribPointer( 2, 2, GL_FLOAT, GL_FALSE, 8 * sizeof( float ), ( void* )( 6 * sizeof( float ) ) );
    glEnableVertexAttribArray( 2 );

    glutMainLoop();

    return 0;
}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门使用技巧:
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件
