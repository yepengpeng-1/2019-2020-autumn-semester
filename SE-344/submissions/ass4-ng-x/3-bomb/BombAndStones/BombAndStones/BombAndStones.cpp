// BombAndStones.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <GL/glew.h>
// idiot clang-format
#include <GL/freeglut.h>
// stupid!
#include "PlyLoader/PlyReaderWrapped.hpp"
#include "TexLoader/texLoader.hpp"

#include "utilities.h"
#include <algorithm>
#include <assert.h>
#include <cmath>
#include <ctime>
#include <iostream>
#include <random>
#include <vector>

#define M_PI 3.14159265358979323846264338327950288

using namespace UT;

static int windowWidth = 800, windowHeight = 800;

static int imageWidth = 0, imageHeight = 0;

std::vector< Pixel > roomBuffer;
unsigned char*       imageBuffer;

std::vector< triangle > rocks;
GLuint                  rockTexture;
GLuint                  wallTexture;

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

void drawBackground( const std::vector< Pixel >& buffer ) {
    glBegin( GL_POINTS );

    for ( const auto& px : buffer ) {
        glColor3f( px.r, px.g, px.b );
        glVertex2f( px.x, px.y );
    }
    glEnd();
}

static int visionSteps = 0;
// 0 = normal.
// 1 = flashlight on
// 2 = bomb exploded

// light parameters

GLfloat lightPos[]     = { -1.2, 1.0, 0.3, 1.0 };
GLfloat ambientLight[] = { 0.7f, 0.7f, 0.74f, 0.1f };
GLfloat specular[]     = { 1.0f, 1.0f, 1.0f, 1.0f };
GLfloat specref[]      = { 1.0f, 1.0f, 1.0f, 1.0f };
GLfloat spotDir[]      = { 0.0f, 0.0f, 0.2f };

static void onRender() {
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

    glEnable( GL_LIGHTING );

    glColorMaterial( GL_FRONT, GL_AMBIENT_AND_DIFFUSE );

    glMaterialfv( GL_FRONT, GL_SPECULAR, specref );
    glMateriali( GL_FRONT, GL_SHININESS, 17 );

    glMatrixMode( GL_PROJECTION );
    glLoadIdentity();
    gluPerspective( 75, 1, 1, 21 );
    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();
    gluLookAt( -4, 3, 3, 0, 0, 0, 0, 0, 1 );

    glRotatef( angle, 0.0f, 0.0f, 1.0f );
    angle += 0.2f;
    lightPos[ 0 ] = cos( angle * M_PI / 180.0 ) * -1.8f;
    lightPos[ 1 ] = sin( angle * M_PI / 180.0 ) * 1.5f;

    if ( visionSteps == 2 ) {
        glLightModelfv( GL_LIGHT_MODEL_AMBIENT, specular );
    }
    else if ( visionSteps == 1 ) {
        spotDir[ 0 ] = random_double();
        spotDir[ 1 ] = random_double();
        glLightfv( GL_LIGHT0, GL_POSITION, lightPos );
        glLightfv( GL_LIGHT0, GL_DIFFUSE, ambientLight );
        glLightfv( GL_LIGHT0, GL_SPECULAR, specular );
        glLightfv( GL_LIGHT0, GL_POSITION, lightPos );
        glLightModelfv( GL_LIGHT_MODEL_AMBIENT, ambientLight );
        glLightf( GL_LIGHT0, GL_SPOT_CUTOFF, 50.0f );
        glEnable( GL_LIGHT0 );
    }
    else if ( visionSteps == 0 ) {
        glLightModelfv( GL_LIGHT_MODEL_AMBIENT, ambientLight );
    }
    glEnable( GL_COLOR_MATERIAL );

    glColor3f( 0.5f, 0.5f, 0.6f );
    glEnable( GL_TEXTURE_2D );
    glBindTexture( GL_TEXTURE_2D, wallTexture );
    glBegin( GL_POLYGON );

    glTexCoord2f( 1.0f, 0.0f );
    glVertex3f( 10.0f, 0.0f, -5.0f );
    glTexCoord2f( 1.0f, 1.0f );
    glVertex3f( 10.0f, 0.0f, 5.0f );
    glTexCoord2f( 0.0f, 1.0f );
    glVertex3f( 0.0f, 10.0f, 5.0f );
    glTexCoord2f( 0.0f, 0.0f );
    glVertex3f( 0.0f, 10.0f, -5.0f );

    glEnd();

    glBegin( GL_POLYGON );
    // glColor3f( 0.0f, 0.0f, 1.0f );

    glTexCoord2f( 1.0f, 0.0f );
    glVertex3f( 0.0f, 10.0f, -5.0f );
    glTexCoord2f( 1.0f, 1.0f );
    glVertex3f( 0.0f, 10.0f, 5.0f );
    glTexCoord2f( 0.0f, 1.0f );
    glVertex3f( -10.0f, 0.0f, 5.0f );
    glTexCoord2f( 0.0f, 0.0f );
    glVertex3f( -10.0f, 0.0f, -5.0f );

    glEnd();

    glBegin( GL_POLYGON );
    // glColor3f( 1.0f, 0.0f, 1.0f );

    glTexCoord2f( 1.0f, 0.0f );
    glVertex3f( -10.0f, 0.0f, -5.0f );
    glTexCoord2f( 1.0f, 1.0f );
    glVertex3f( -10.0f, 0.0f, 5.0f );
    glTexCoord2f( 0.0f, 1.0f );
    glVertex3f( 0.0f, -10.0f, 5.0f );
    glTexCoord2f( 0.0f, 0.0f );
    glVertex3f( 0.0f, -10.0f, -5.0f );

    glEnd();

    glBegin( GL_POLYGON );
    // glColor3f( 0.0f, 1.0f, 1.0f );

    glTexCoord2f( 1.0f, 0.0f );
    glVertex3f( 0.0f, -10.0f, -5.0f );
    glTexCoord2f( 1.0f, 1.0f );
    glVertex3f( 0.0f, -10.0f, 5.0f );
    glTexCoord2f( 0.0f, 1.0f );
    glVertex3f( 10.0f, 0.0f, 5.0f );
    glTexCoord2f( 0.0f, 0.0f );
    glVertex3f( 10.0f, 0.0f, -5.0f );

    glEnd();

    glDisable( GL_TEXTURE_2D );

    glEnable( GL_TEXTURE_2D );

    glColor3f( 0.25f, 0.3f, 0.3f );
    glBindTexture( GL_TEXTURE_2D, rockTexture );
    glBegin( GL_TRIANGLES );
    for ( const auto& tri : rocks ) {
        drawTriangleWithTexture( tri.a, tri.ta );
        drawTriangleWithTexture( tri.b, tri.tb );
        drawTriangleWithTexture( tri.c, tri.tc );
    }
    glEnd();
    glDisable( GL_TEXTURE_2D );

    glutSwapBuffers();
}

inline void _glVertex2f( GLfloat x, GLfloat y ) {
    glVertex2f( x / ( windowWidth / 2 ) - 1.0f, y / ( windowHeight / 2 ) - 1.0f );
}

inline void _glVertex3f( GLfloat x, GLfloat y, GLfloat z ) {
    glVertex3f( x / ( windowWidth / 2 ) - 1.0f, y / ( windowHeight / 2 ) - 1.0f, z );
}

void keyboardAction( unsigned char key, int x, int y ) {
    switch ( key ) {
    case 32:
        if ( visionSteps == 0 ) {
            visionSteps = 1;
            glutPostRedisplay();
        }
        break;
    case 'b':
        if ( visionSteps == 1 ) {
            visionSteps = 2;
            glutPostRedisplay();
        }
        break;
    default:
        break;
    }
    std::cout << "switched to step #" << visionSteps << std::endl;
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
    glutKeyboardFunc( keyboardAction );

    glEnable( GL_DEPTH_TEST );

    glShadeModel( GL_SMOOTH );

    rocks       = read_ply_file( "./models/rock_cluster.ply" );
    rockTexture = TM::loadTexture( "./maps/rock.png" );
    wallTexture = TM::loadTexture( "./maps/wall.png" );

    // char filename[] = "./maps/gate.png";
    // imageBuffer     = SOIL_load_image( filename, &imageWidth, &imageHeight, 0, SOIL_LOAD_RGB );

    // TM::loadImage( roomBuffer, "./imgs/gate.png", imageWidth, imageHeight );

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
