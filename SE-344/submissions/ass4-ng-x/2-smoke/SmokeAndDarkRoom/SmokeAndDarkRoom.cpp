// SmokeAndDarkRoom.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <GL/glew.h>
// idiot clang-format
#include "ObjLoader/tiny_obj_loader.h"
#include "PlyLoader/PlyReaderWrapped.hpp"
#include "TexLoader/texLoader.hpp"
#include "particles/particle_generator.hpp"
#include "triangle/Triangle.hpp"
#include "utilities.h"
#include <GL/freeglut.h>
#include <algorithm>
#include <assert.h>
#include <cmath>
#include <ctime>
#include <iostream>
#include <random>
#include <vector>

#define PREDEF_SCALE_RATIO 40.0
#define M_PI 3.14159265358979323846264338327950288

static int windowWidth = 800, windowHeight = 450;

static int imageWidth = 0, imageHeight = 0;

static GLuint bookTexture, roomTexture;

ParticleMaster* master = nullptr;

std::vector< Pixel > bookBuffer, roomBuffer;

static void onWindowResized( int w, int h ) {
    windowWidth = w, windowHeight = h;
    glViewport( 0, 0, w, h );

    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();

    if ( master ) {
        // only update particles when it's valid
        master->setWidthHeight( w, h );
    }
}

std::vector< Triangle > fragments;

inline void _glVertex2f( GLfloat x, GLfloat y ) {
    glVertex2f( x / ( windowWidth / 2 ) - 1.0f, y / ( windowHeight / 2 ) - 1.0f );
}

inline void _glVertex3f( GLfloat x, GLfloat y, GLfloat z ) {
    glVertex3f( x / ( windowWidth / 2 ) - 1.0f, y / ( windowHeight / 2 ) - 1.0f, z );
}

inline double randomRadius( float radius ) {
    auto ratio = random_double() * 0.1f + 0.95f;
    return radius * ratio;
}

void orthogonalStart() {
    glMatrixMode( GL_PROJECTION );
    glPushMatrix();
    glLoadIdentity();
    gluOrtho2D( -windowWidth / 2, windowWidth / 2, -windowHeight / 2, windowHeight / 2 );
    glMatrixMode( GL_MODELVIEW );
}

void orthogonalEnd() {
    glMatrixMode( GL_PROJECTION );
    glPopMatrix();
    glMatrixMode( GL_MODELVIEW );
}

void drawBackground( const std::vector< Pixel >& buffer ) {
    glBegin( GL_POINTS );

    for ( const auto& px : buffer ) {
        glColor4f( px.r, px.g, px.b, 1.0f );
        glVertex2f( px.x, px.y );
    }

    glEnd();
}

static int textureVisibleState = 0;

void callTimer() {

    auto time = glutGet( GLUT_ELAPSED_TIME );
    if ( time > 40000 ) {
        exit( 0 );
    }
    else if ( time > 30000 ) {
        textureVisibleState = 2;
    }
    else if ( time > 20000 ) {
        textureVisibleState = 1;
    }
}

static void onRender() {
    callTimer();
    master->updateParticles();

    glClear( GL_COLOR_BUFFER_BIT );

    glLoadIdentity();

    if ( textureVisibleState == 0 ) {
        drawBackground( bookBuffer );
    }
    else if ( textureVisibleState == 2 ) {
        master->keepRetrobriting = false;
        drawBackground( roomBuffer );
    }

    // glBegin( GL_TRIANGLES );

    // int counter = 1;

    // glutSwapBuffers();
    // return;
    for ( const auto& i : master->particles ) {

        float radius      = ( 1.5f - i.alpha ) * 50.0f;
        auto  actualAlpha = i.alpha / 3.0f;

        double n = double( random_int() % 6 ) + 6;  // fragment count

        glColor4f( 1.0f, 1.0f, 1.0f, actualAlpha );
        glBegin( GL_TRIANGLE_FAN );
        _glVertex3f( i.posx, i.posy, 0.1f );

        glColor4f( 1.0f, 1.0f, 1.0f, 0.0f );
        for ( size_t ic = 0; ic <= n; ic++ ) {
            _glVertex3f( i.posx + radius * cos( 2 * M_PI / n * ic ), i.posy + radius * sin( 2 * M_PI / n * ic ), 0.1f );
        }
        glEnd();

        // auto radius1 = randomRadius( radius ), radius2 = randomRadius( radius ), radius3 = randomRadius( radius ), radius4 = randomRadius( radius );

        //
        // _glVertex3f( i.posx, i.posy, 0.0 );

        // glColor4f( 1.0f, 1.0f, 1.0f, 0.0f );
        // _glVertex3f( i.posx - radius1, i.posy - radius1, 0.0 );
        // _glVertex3f( i.posx - radius2, i.posy + radius2, 0.0 );

        // glColor4f( 1.0f, 1.0f, 1.0f, actualAlpha );
        // _glVertex3f( i.posx, i.posy, 0.0 );

        // glColor4f( 1.0f, 1.0f, 1.0f, 0.0f );
        // _glVertex3f( i.posx - radius2, i.posy + radius2, 0.0 );
        // _glVertex3f( i.posx + radius3, i.posy + radius3, 0.0 );

        // glColor4f( 1.0f, 1.0f, 1.0f, actualAlpha );
        // _glVertex3f( i.posx, i.posy, 0.0 );

        // glColor4f( 1.0f, 1.0f, 1.0f, 0.0f );
        // _glVertex3f( i.posx + radius3, i.posy + radius3, 0.0 );
        // _glVertex3f( i.posx + radius4, i.posy - radius4, 0.0 );

        // glColor4f( 1.0f, 1.0f, 1.0f, actualAlpha );
        // _glVertex3f( i.posx, i.posy, 0.0 );

        // glColor4f( 1.0f, 1.0f, 1.0f, 0.0f );
        // _glVertex3f( i.posx + radius4, i.posy - radius4, 0.0 );
        // _glVertex3f( i.posx - radius1, i.posy - radius1, 0.0 );
    }
    glutSwapBuffers();
}

int main( int argc, char** argv ) {

    std::vector< Triangle > smoke;

    /* Draw triangles! */
    glutInit( &argc, argv );

    glutInitDisplayMode( GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH );

    glutInitWindowSize( windowWidth, windowHeight );
    onWindowResized( windowWidth, windowHeight );
    glutCreateWindow( "Grave Robber" );

    glutReshapeFunc( onWindowResized );
    glutDisplayFunc( onRender );

    glutIdleFunc( onRender );

    // bookTexture = TM::loadTexture( "./imgs/ancient_book.png" );
    // roomTexture = TM::loadTexture( "./imgs/gate.png" );

    bookBuffer.clear();
    roomBuffer.clear();

    TM::loadImage( bookBuffer, "./imgs/ancient_book.png", imageWidth, imageHeight );
    TM::loadImage( roomBuffer, "./imgs/gate.png", imageWidth, imageHeight );

    glEnable( GL_BLEND );
    glBlendFunc( GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA );
    // glEnable( GL_COLOR_MATERIAL );
    glClearColor( 0.0, 0.0, 0.0, 1.0f );

    const size_t amount = 1000;
    master              = new ParticleMaster( windowWidth, windowHeight, amount );

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
