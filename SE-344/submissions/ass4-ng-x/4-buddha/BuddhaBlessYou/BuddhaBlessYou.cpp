// BuddhaBlessYou.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <GL/glew.h>
// idiot clang-format
#include <GL/freeglut.h>
// stupid!
#include "PlyLoader/PlyReaderWrapped.hpp"

#include "utilities.h"
#include <Windows.h>
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

static void onWindowResized( int w, int h ) {
    windowWidth = w, windowHeight = h;
    glViewport( 0, 0, w, h );

    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();
}

static GLfloat angle = 0.0f;

std::vector< UT::triangle > buddha_low;
std::vector< UT::triangle > buddha_medium;
std::vector< UT::triangle > buddha_high;
std::vector< UT::triangle > buddha_best;

static size_t currentState = 0;
static bool   satisfied    = true;
// 0 - low resolution
// 1 - medium resolution
// 2 - high resolution
// 3 - best resolution

static void onTimerTicked() {
    if ( !satisfied ) {
        return;
    }
    auto time = glutGet( GLUT_ELAPSED_TIME );
    if ( currentState == 2 && time >= 60000 ) {
        std::cout << "switched to best resolution" << std::endl;
        currentState = 3;
    }
    else if ( currentState == 1 && time >= 40000 ) {
        std::cout << "switched to high resolution" << std::endl;
        currentState = 2;
    }
    else if ( currentState == 0 && time >= 20000 ) {
        std::cout << "switched to medium resolution" << std::endl;
        currentState = 1;
    }
    // might complete in 3 ~ 4 seconds
    // CreateThread( nullptr, 0, load_medium, nullptr, 0, nullptr );

    // might complete in 12 ~ 15 seconds
    // CreateThread( nullptr, 0, load_high, nullptr, 0, nullptr );

    // might complete in 40 seconds or so
    // CreateThread( nullptr, 0, load_best, nullptr, 0, nullptr );
}

inline void drawTriangleWithoutTexture( const float3& vert /*, float3 normal, float2 tex */ ) {
    glVertex3f( vert.x, vert.y, vert.z );
}

// environment light
GLfloat ambientLight[] = { 0.3f, 0.3f, 0.3f, 1.0f };

GLfloat lightPos1[] = { 0, 1.5, 2.0, 1.0 };
GLfloat specular1[] = { 1.0f, 0.0f, 0.0f, 1.0f };

GLfloat lightPos2[] = { -1.732, 1.5, -1.0, 1.0 };
GLfloat specular2[] = { 0.0f, 1.0f, 0.0f, 1.0f };

GLfloat lightPos3[] = { 1.732, 1.5, -1.0, 1.0 };
GLfloat specular3[] = { 0.0f, 0.0f, 1.0f, 1.0f };

GLfloat specref[] = { 1.0f, 1.0f, 1.0f, 1.0f };
GLfloat spotDir[] = { 0.0f, 0.5f, 0.0f };

GLfloat mat_ambient[]       = { 0.4f, 0.4f, 0.4f, 1.0f };
GLfloat mat_ambient_color[] = { 0.8f, 0.8f, 0.2f, 1.0f };
GLfloat mat_diffuse[]       = { 0.4f, 0.4f, 0.4f, 1.0f };
GLfloat mat_specular[]      = { 0.7f, 0.7f, 0.7f, 1.0f };
GLfloat mat_emission[]      = { 0.0f, 0.0f, 0.0f, 1.f };
GLfloat mat_no_emission[]   = { 0.3f, 0.2f, 0.2f, 0.0f };
GLfloat mat_shininess[]     = { 5.0f };

static void onRender() {
    onTimerTicked();

    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

    // put an environment light
    // glLightModelfv( GL_LIGHT_MODEL_AMBIENT, ambientLight );

    // put light no.1
    glLightfv( GL_LIGHT0, GL_POSITION, lightPos1 );
    glLightfv( GL_LIGHT0, GL_DIFFUSE, ambientLight );
    glLightfv( GL_LIGHT0, GL_SPECULAR, specular1 );

    // glLightf( GL_LIGHT0, GL_SPOT_CUTOFF, 50.0f );
    glEnable( GL_LIGHT0 );

    // put light no.2
    glLightfv( GL_LIGHT1, GL_POSITION, lightPos2 );
    glLightfv( GL_LIGHT1, GL_DIFFUSE, ambientLight );
    glLightfv( GL_LIGHT1, GL_SPECULAR, specular2 );

    // glLightf( GL_LIGHT1, GL_SPOT_CUTOFF, 50.0f );
    glEnable( GL_LIGHT1 );

    // put light no.3
    glLightfv( GL_LIGHT2, GL_POSITION, lightPos3 );
    glLightfv( GL_LIGHT2, GL_DIFFUSE, ambientLight );
    glLightfv( GL_LIGHT2, GL_SPECULAR, specular3 );

    // glLightf( GL_LIGHT2, GL_SPOT_CUTOFF, 50.0f );
    glEnable( GL_LIGHT2 );

    // glBegin( GL_POINTS );
    // glColor3f( 1.0, 0.0, 0.0 );
    // glVertex3f( lightPos[ 0 ], lightPos[ 1 ], lightPos[ 2 ] );
    // glEnd();

    glEnable( GL_LIGHTING );

    glColorMaterial( GL_FRONT, GL_AMBIENT_AND_DIFFUSE );

    glMaterialfv( GL_FRONT, GL_AMBIENT, mat_ambient_color );
    glMaterialfv( GL_FRONT, GL_DIFFUSE, mat_diffuse );
    glMaterialfv( GL_FRONT, GL_SPECULAR, mat_specular );
    glMaterialfv( GL_FRONT, GL_SHININESS, mat_shininess );
    glMaterialfv( GL_FRONT, GL_EMISSION, mat_no_emission );

    glMatrixMode( GL_PROJECTION );
    glLoadIdentity();
    gluPerspective( 75, 1, 1, 21 );
    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();
    gluLookAt( -3, 0.5, 0, 0, 2, 0, 0, 1, 0 );

    glRotatef( angle, 0.0f, 1.0f, 0.0f );

    std::vector< triangle >& fragments = buddha_low;
    switch ( currentState ) {
    case 1:
        if ( buddha_medium.size() > 0 ) {
            fragments = buddha_medium;
        }
        angle += 0.3f;
        break;
    case 2:
        if ( buddha_high.size() > 0 ) {
            fragments = buddha_high;
        }
        angle += 1.0f;
        break;
    case 3:
        if ( buddha_best.size() > 0 ) {
            fragments = buddha_best;
        }
        angle += 3.0f;
        break;
    default:
        angle += 0.2f;
        break;
    }

    glColor3f( 1.0, 1.0, 1.0 );
    glBegin( GL_TRIANGLES );
    for ( const auto& tri : fragments ) {
        drawTriangleWithoutTexture( tri.a );
        drawTriangleWithoutTexture( tri.b );
        drawTriangleWithoutTexture( tri.c );
    }
    glEnd();

    glutSwapBuffers();
}

DWORD WINAPI load_best( LPVOID lpParameter ) {
    buddha_best = read_ply_file( "./models/happy_recon/happy_vrip.ply" );
    cout << "Best Resolution Loaded" << endl;
    return 0;
}

DWORD WINAPI load_high( LPVOID lpParameter ) {
    buddha_high = read_ply_file( "./models/happy_recon/happy_vrip_res2.ply" );
    cout << "High Resolution Loaded" << endl;
    // might complete in 40 seconds or so
    CreateThread( nullptr, 0, load_best, nullptr, 0, nullptr );
    return 0;
}

DWORD WINAPI load_medium( LPVOID lpParameter ) {
    buddha_medium = read_ply_file( "./models/happy_recon/happy_vrip_res3.ply" );
    cout << "Medium Resolution Loaded" << endl;
    // might complete in 12 ~ 15 seconds
    CreateThread( nullptr, 0, load_high, nullptr, 0, nullptr );

    return 0;
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

    glEnable( GL_DEPTH_TEST );

    glShadeModel( GL_SMOOTH );

    glClearColor( 0.0, 0.0, 0.0, 1.0f );

    buddha_low = read_ply_file( "./models/happy_recon/happy_vrip_res4.ply" );

    // might complete in 3 ~ 4 seconds
    CreateThread( nullptr, 0, load_medium, nullptr, 0, nullptr );

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
