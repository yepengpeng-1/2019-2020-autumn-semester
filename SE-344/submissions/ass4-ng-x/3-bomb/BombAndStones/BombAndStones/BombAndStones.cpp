// BombAndStones.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <GL/glew.h>
// idiot clang-format
#include <GL/freeglut.h>
// stupid!
#include "PlyLoader/PlyReaderWrapped.hpp"
#include "TexLoader/texLoader.hpp"

#include <algorithm>
#include <assert.h>
#include <cmath>
#include <ctime>
#include <iostream>
#include <random>
#include <vector>

static int windowWidth = 800, windowHeight = 800;

std::vector< triangle > rocks;
GLuint                  rockTexture;

static void onWindowResized( int w, int h ) {
    windowWidth = w, windowHeight = h;
    glViewport( 0, 0, w, h );

    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();
}

static GLfloat angle = 0.0f;

inline void drawTriangleWithTexture( float3 vert, /* float3 normal, */ float2 tex ) {
    // u = s
    // v = 1 - t
    glTexCoord2f( tex.x, 1 - tex.y );
    glVertex3f( vert.x, vert.y, vert.z );
}

static void onRender() {
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
    // 设置视角
    glMatrixMode( GL_PROJECTION );
    glLoadIdentity();
    gluPerspective( 75, 1, 1, 21 );
    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();
    gluLookAt( -3, 2, 2, 0, 0, 0, 0, 0, 1 );

    glRotatef( angle, 0.0f, 0.0f, 1.0f );
    angle += 0.1f;

    glBindTexture( GL_TEXTURE_2D, rockTexture );
    glBegin( GL_TRIANGLES );
    for ( const auto& tri : rocks ) {
        drawTriangleWithTexture( tri.a, tri.ta );
        drawTriangleWithTexture( tri.b, tri.tb );
        drawTriangleWithTexture( tri.c, tri.tc );
    }
    glEnd();
    glutSwapBuffers();
}

inline void _glVertex2f( GLfloat x, GLfloat y ) {
    glVertex2f( x / ( windowWidth / 2 ) - 1.0f, y / ( windowHeight / 2 ) - 1.0f );
}

inline void _glVertex3f( GLfloat x, GLfloat y, GLfloat z ) {
    glVertex3f( x / ( windowWidth / 2 ) - 1.0f, y / ( windowHeight / 2 ) - 1.0f, z );
}

int main( int argc, char** argv ) {

    /* Draw triangles! */
    glutInit( &argc, argv );

    glutInitDisplayMode( GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH );

    glutInitWindowSize( windowWidth, windowHeight );
    onWindowResized( windowWidth, windowHeight );
    glutCreateWindow( "Grave Robber" );

    glutReshapeFunc( onWindowResized );
    glutDisplayFunc( onRender );
    glutIdleFunc( onRender );

    glEnable( GL_TEXTURE_2D );

    rocks       = read_ply_file( "./models/rock_cluster.ply" );
    rockTexture = TM::loadTexture( "./maps/rock.png" );

    glEnable( GL_DEPTH_TEST );

    glClearColor( 0.0, 0.0, 0.0, 1.0f );

    GLenum error = glewInit();
    if ( error != GLEW_OK ) {
        printf( "glew init failure." );
        return 1;
    }

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
