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

std::vector< UT::triangle > buddha_low;
std::vector< UT::triangle > buddha_medium;
std::vector< UT::triangle > buddha_high;
std::vector< UT::triangle > buddha_best;

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

    glutSwapBuffers();
}

DWORD WINAPI load_medium( LPVOID lpParameter ) {
    buddha_medium = read_ply_file( "./models/happy_recon/happy_vrip_res3.ply" );
    cout << "Medium Resolution Loaded" << endl;
    return 0;
}

DWORD WINAPI load_high( LPVOID lpParameter ) {
    buddha_high = read_ply_file( "./models/happy_recon/happy_vrip_res2.ply" );
    cout << "High Resolution Loaded" << endl;
    return 0;
}

DWORD WINAPI load_best( LPVOID lpParameter ) {
    buddha_best = read_ply_file( "./models/happy_recon/happy_vrip.ply" );
    cout << "Best Resolution Loaded" << endl;
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

    // might complete in 12 ~ 15 seconds
    CreateThread( nullptr, 0, load_high, nullptr, 0, nullptr );

    // might complete in 40 seconds or so
    CreateThread( nullptr, 0, load_best, nullptr, 0, nullptr );

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
