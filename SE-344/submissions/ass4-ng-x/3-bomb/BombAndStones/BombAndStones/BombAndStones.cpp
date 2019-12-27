// BombAndStones.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <GL/glew.h>
// idiot clang-format
#include <GL/freeglut.h>
// stupid!
#include "ObjLoader/ObjLoaderWrapped.hpp"
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

std::vector< Triangle > bomb;
// Triangle comes from .obj
std::vector< triangle > rocks;
// and triangle comes from .ply

GLuint rockTexture;
GLuint wallTexture;

inline void _glVertex2f( GLfloat x, GLfloat y ) {
    glVertex2f( x / ( windowWidth / 2 ) - 1.0f, y / ( windowHeight / 2 ) - 1.0f );
}

inline void _glVertex3f( GLfloat x, GLfloat y, GLfloat z ) {
    glVertex3f( x / ( windowWidth / 2 ) - 1.0f, y / ( windowHeight / 2 ) - 1.0f, z );
}

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
// 2 = bomb appearing
// 3 = bomb exploding

// light parameters

GLfloat lightPos[]     = { -1.2, 1.0, 0.3, 1.0 };
GLfloat ambientLight[] = { 0.7f, 0.7f, 0.74f, 0.1f };
GLfloat specular[]     = { 1.0f, 1.0f, 1.0f, 1.0f };
GLfloat specref[]      = { 1.0f, 1.0f, 1.0f, 1.0f };
GLfloat spotDir[]      = { 0.0f, 0.0f, 0.2f };

GLfloat mat_ambient[]  = { 0.4f, 0.4f, 0.4f, 1.0f };
GLfloat mat_diffuse[]  = { 0.4f, 0.4f, 0.4f, 1.0f };
GLfloat mat_specular[] = { 0.7f, 0.7f, 0.7f, 1.0f };
GLfloat mat_emission[] = { 0.0f, 0.0f, 0.0f, 1.f };
GLfloat mat_shininess  = 120.0f;

GLfloat bomb_position[] = { 0.0f, 0.0f, 0.0f };

static float lightBaseX      = -1.8f;
static float lightBaseY      = 1.5f;
static float bombFallenZ     = 10.0f;
static float bombFallenSpeed = 0.0f;

static void drawPoint( TrianglePoint p, double xoffset = 0.0, double yoffset = 0.0, double zoffset = 0.0 ) {
    glColor3f( p.r, p.g, p.b );
    // glColor3f( 1.0, 1.0, 1.0 );
    glVertex3f( p.x + xoffset, p.y + yoffset, p.z + zoffset );
}

static void drawBomb( double xoffset = 0.0, double yoffset = 0.0, double zoffset = 0.0 ) {
    bomb_position[ 0 ] = xoffset, bomb_position[ 1 ] = yoffset, bomb_position[ 2 ] = zoffset;
    glMaterialfv( GL_FRONT, GL_AMBIENT, mat_ambient );
    glMaterialfv( GL_FRONT, GL_DIFFUSE, mat_diffuse );
    glMaterialfv( GL_FRONT, GL_SPECULAR, mat_specular );
    glMaterialfv( GL_FRONT, GL_EMISSION, mat_emission );
    glMaterialf( GL_FRONT, GL_SHININESS, mat_shininess );

    glBegin( GL_TRIANGLES );
    for ( const auto& tri : bomb ) {
        drawPoint( tri.tPoint1, xoffset, yoffset, zoffset );
        drawPoint( tri.tPoint2, xoffset, yoffset, zoffset );
        drawPoint( tri.tPoint3, xoffset, yoffset, zoffset );
    }
    glEnd();
}

static void makeExplosion( std::vector< triangle >& src ) {
    for ( auto& tri : src ) {
        auto xmov = random_double() / 10 - 0.05f;
        auto ymov = random_double() / 10 - 0.05f;
        auto zmov = random_double() / 10 - 0.05f;

        if ( tri.a.x < 0 ) {
            xmov -= 0.03f;
        }
        else {
            xmov += 0.03f;
        }

        if ( tri.b.y < 0 ) {
            ymov -= 0.03f;
        }
        else {
            ymov += 0.03f;
        }

        if ( tri.c.z < 0 ) {
            zmov -= 0.03f;
        }
        else {
            zmov += 0.03f;
        }

        tri.a.x += xmov;
        tri.a.y += ymov;
        tri.a.z += zmov;

        tri.b.x += xmov;
        tri.b.y += ymov;
        tri.b.z += zmov;

        tri.c.x += xmov;
        tri.c.y += ymov;
        tri.c.z += zmov;
    }
}

static void makeExplosion( std::vector< Triangle >& src ) {
    for ( auto& tri : src ) {

        auto xmov = random_double() / 10 - 0.05f;
        auto ymov = random_double() / 10 - 0.05f;
        auto zmov = random_double() / 10 - 0.05f;

        if ( tri.tPoint1.x < 0 ) {
            xmov -= 0.03f;
        }
        else {
            xmov += 0.03f;
        }

        if ( tri.tPoint2.y < 0 ) {
            ymov -= 0.03f;
        }
        else {
            ymov += 0.03f;
        }

        if ( tri.tPoint3.z < 0 ) {
            zmov -= 0.03f;
        }
        else {
            zmov += 0.03f;
        }

        tri.tPoint1.x += xmov;
        tri.tPoint1.y += ymov;
        tri.tPoint1.z += zmov;

        tri.tPoint2.x += xmov;
        tri.tPoint2.y += ymov;
        tri.tPoint2.z += zmov;

        tri.tPoint3.x += xmov;
        tri.tPoint3.y += ymov;
        tri.tPoint3.z += zmov;

        tri.tPoint1.r = sqrt( tri.tPoint1.r );
        tri.tPoint1.g = sqrt( tri.tPoint1.g );
        tri.tPoint1.b = sqrt( tri.tPoint1.b );

        tri.tPoint2.r = sqrt( tri.tPoint2.r );
        tri.tPoint2.g = sqrt( tri.tPoint2.g );
        tri.tPoint2.b = sqrt( tri.tPoint2.b );

        tri.tPoint3.r = sqrt( tri.tPoint3.r );
        tri.tPoint3.g = sqrt( tri.tPoint3.g );
        tri.tPoint3.b = sqrt( tri.tPoint3.b );
    }
}

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

    glEnable( GL_COLOR_MATERIAL );

    lightPos[ 0 ] = cos( angle * M_PI / 180.0 ) * lightBaseX;
    lightPos[ 1 ] = sin( angle * M_PI / 180.0 ) * lightBaseY;
    if ( visionSteps == 3 ) {
        glLightModelfv( GL_LIGHT_MODEL_AMBIENT, ambientLight );
        // turn off the flashlight
        // glDisable( GL_LIGHT0 );
        drawBomb( 0.0, 0.0, bombFallenZ );
        // lightPos[ 0 ] = bomb_position[ 0 ] * 1.4;
        // lightPos[ 1 ] = bomb_position[ 1 ] * 1.4;
        lightPos[ 2 ] = bomb_position[ 2 ] * 1.4;
        glLightfv( GL_LIGHT0, GL_POSITION, lightPos );
        glLightfv( GL_LIGHT0, GL_DIFFUSE, ambientLight );
        glLightfv( GL_LIGHT0, GL_SPECULAR, specular );
        glLightf( GL_LIGHT0, GL_SPOT_CUTOFF, 50.0f );
        glEnable( GL_LIGHT0 );

        makeExplosion( rocks );
        makeExplosion( bomb );

        angle += 0.05f;
    }
    else if ( visionSteps == 2 ) {
        bombFallenSpeed += 0.002f;
        bombFallenZ -= bombFallenSpeed;
        if ( bombFallenZ < 1.0f ) {
            visionSteps = 3;
        }
        glLightModelfv( GL_LIGHT_MODEL_AMBIENT, ambientLight );
        // turn off the flashlight
        // glDisable( GL_LIGHT0 );
        drawBomb( 0.0, 0.0, bombFallenZ );

        spotDir[ 0 ] = bomb_position[ 0 ];
        spotDir[ 1 ] = bomb_position[ 1 ];
        spotDir[ 2 ] = bomb_position[ 2 ] - 1.0f;

        // lightPos[ 0 ] = bomb_position[ 0 ] * 1.4;
        // lightPos[ 1 ] = bomb_position[ 1 ] * 1.4;
        lightPos[ 2 ] = bomb_position[ 2 ] * 1.4;
        glLightfv( GL_LIGHT0, GL_POSITION, lightPos );
        glLightfv( GL_LIGHT0, GL_DIFFUSE, ambientLight );
        glLightfv( GL_LIGHT0, GL_SPECULAR, specular );
        glLightf( GL_LIGHT0, GL_SPOT_CUTOFF, 50.0f );
        glEnable( GL_LIGHT0 );

        angle += 0.05f;
    }
    else if ( visionSteps == 1 ) {
        // spotDir[ 0 ] = random_double();
        // spotDir[ 1 ] = random_double();
        glLightfv( GL_LIGHT0, GL_POSITION, lightPos );
        glLightfv( GL_LIGHT0, GL_DIFFUSE, ambientLight );
        glLightfv( GL_LIGHT0, GL_SPECULAR, specular );
        glLightModelfv( GL_LIGHT_MODEL_AMBIENT, ambientLight );
        glLightf( GL_LIGHT0, GL_SPOT_CUTOFF, 50.0f );
        glEnable( GL_LIGHT0 );
        angle += 0.2f;
    }
    else if ( visionSteps == 0 ) {
        glLightModelfv( GL_LIGHT_MODEL_AMBIENT, ambientLight );
        angle += 0.1f;
    }

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

void keyboardAction( unsigned char key, int x, int y ) {
    switch ( key ) {
    case 'w':
        lightBaseY += 0.1f;
        break;
    case 'a':
        lightBaseX -= 0.1f;
        break;
    case 's':
        lightBaseY -= 0.1f;
        break;
    case 'd':
        lightBaseX += 0.1f;
        break;
    case 'r':
        lightBaseX = -1.8f;
        lightBaseY = 1.5f;
        break;
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
    std::cout << "current step #" << visionSteps << std::endl;
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

    // turn on the fog
    // glEnable( GL_FOG );
    glShadeModel( GL_SMOOTH );

    rocks       = read_ply_file( "./models/rock_cluster.ply" );
    rockTexture = TM::loadTexture( "./maps/rock.png" );
    wallTexture = TM::loadTexture( "./maps/wall.png" );

    loadObjObject( bomb, "./models/bomb.obj", 0.0, 0.0, 0.0 );

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
