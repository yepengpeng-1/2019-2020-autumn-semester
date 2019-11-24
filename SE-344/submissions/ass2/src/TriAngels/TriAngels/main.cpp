#include "DepthChecker.hpp"
#include "Reader.h"
#include "Triangle.hpp"
#include "Weaving.hpp"
#include <GL/freeglut.h>
#include <GL/glew.h>
#include <ctime>
#include <iostream>
#include <vector>


using namespace std;

static int windowWidth = 1024, windowHeight = 1024;

static GLfloat rotationX = 0.0f;
static GLfloat rotationY = 0.0f;
static GLfloat rotationZ = 0.0f;

static GLfloat speedX = 0.0f;
static GLfloat speedY = 0.0f;
static GLfloat speedZ = 0.0f;

static GLfloat const maxSpeedLimit = 0.5f;

static std::vector< Triangle > triangles;

static bool useDefaultDepthCheck = true;

static bool singleColorMode = false;

static void onWindowResized( int w, int h ) {
    windowWidth = w, windowHeight = h;
    glViewport( 0, 0, w, h );

    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();
}

static void updateRotation() {
    if ( !useDefaultDepthCheck ) {
        return;
    }
    auto speed = 0.4f;
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
}

static void onRender() {
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
    glLoadIdentity();
    updateRotation();

    glRotatef( rotationX, 1.0, 0.0, 0.0 );
    glRotatef( rotationY, 0.0, 1.0, 0.0 );
    glRotatef( rotationZ, 0.0, 0.0, 1.0 );

    if ( useDefaultDepthCheck ) {
        glColor3d( 0.6, 0.6, 0.7 );
        for ( float i = -50; i <= 50; i += 0.2f ) {
            /** ������ */
            glBegin( GL_LINES );

            /** X�᷽�� */
            glVertex3f( -50, 0, i );
            glVertex3f( 50, 0, i );

            /** Z�᷽�� */
            glVertex3f( i, 0, -50 );
            glVertex3f( i, 0, 50 );

            glEnd();
        }
    }

    double ratio = 150.0;

    if ( useDefaultDepthCheck ) {
        glBegin( GL_TRIANGLES );

        // int counter = 1;
        for ( auto i : triangles ) {
            auto point = i.tPoint1;
            glColor3d( point.r, point.g, point.b );
            // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
            glVertex3d( point.x / ratio, point.y / ratio, point.z / ratio );

            point = i.tPoint2;
            glColor3d( point.r, point.g, point.b );
            // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
            glVertex3d( point.x / ratio, point.y / ratio, point.z / ratio );

            point = i.tPoint3;
            glColor3d( point.r, point.g, point.b );
            // std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
            glVertex3d( point.x / ratio, point.y / ratio, point.z / ratio );

            // std::cout << "draw a triangle #" << counter << std::endl;
            // counter += 1;
        }
        glEnd();
    }
    else {
        if ( singleColorMode ) {
            glPointSize( 4.0 );
            auto depthChecker = DepthChecker( triangles, singleColorMode );
            glBegin( GL_POINTS );
            for ( auto p : depthChecker.scanLines() ) {
                glColor3d( p.r, p.g, p.b );
                glVertex2d( p.x / ratio, p.y / ratio );
            }
            glEnd();
        }
        else {
            glPointSize( 7.0 );
            auto depthChecker = DepthChecker( triangles, singleColorMode );
            glBegin( GL_POINTS );
            for ( auto p : depthChecker.scanLines() ) {
                glColor3d( p.r, p.g, p.b );
                glVertex3d( p.x / ratio, p.y / ratio, p.z / ratio );
            }
            glEnd();
        }
    }

    glutSwapBuffers();
}

int main( int argc, char** argv ) {
    int  inputFlag;
    char depthCheckFlag;

    std::cout << "First of all, would you like to use the FreeGLUT provided depth check " << std::endl
              << "or the self implemented depth checking algorithm? " << std::endl
              << "Input 'Y' or 'y' for the default depth check" << std::endl
              << "or input 'N' or 'n' for my customized version." << std::endl
              << "Make your choice: >>> ";

    std::cin >> depthCheckFlag;

    if ( depthCheckFlag == 'Y' || depthCheckFlag == 'y' ) {
        useDefaultDepthCheck = true;
        std::cout << "You've enabled the FreeGLUT provided default depth check." << std::endl << std::endl;
    }
    else {
        useDefaultDepthCheck = false;
        std::cout << "You've enabled the self-implemented provided default depth check." << std::endl
                  << "Notice that under this mode, the view rotation feature will be disabled." << std::endl
                  << std::endl;
    }

    std::cout << "Please input a number to pick the phase of this assignment: " << std::endl
              << "\t1 - Overlapping Triangles" << std::endl
              << "\t2 - Intersecting Triangles" << std::endl
              << "\t3 - Weaving Rectangles" << std::endl
              << "\nMake your choice: >>> ";

    std::cin >> inputFlag;

    if ( inputFlag == 1 ) {
        std::string path;
        std::cout << "Please provide the .tri file's path (relatively). \nOr, use '../../../resources/overlapping.tri' by default." << std::endl;

        std::cin >> path;

        if ( path == "!" ) {
            path = "../../../resources/overlapping.tri";
        }
        triangles       = readTriangle( path );
        singleColorMode = false;
    }
    else if ( inputFlag == 2 ) {
        std::string path;
        std::cout << "Please provide the .tri file's path (relatively). \nOr, use '../../../resources/intersecting.tri' by default." << std::endl;

        std::cin >> path;

        if ( path == "!" ) {
            path = "../../../resources/intersecting.tri";
        }
        triangles = readTriangle( path );
        if ( !useDefaultDepthCheck ) {
            for ( auto& i : triangles ) {
                i.rotate( 0.76 );
            }
        }
        singleColorMode = false;
    }
    else if ( inputFlag == 3 ) {
        auto weaves     = WeavingManager();
        triangles       = weaves.getWeavingShape();
        singleColorMode = true;
        std::cout << "Successfully generated weaving texture with " << triangles.size() << " triangle(s)." << std::endl;
    }
    else {
        std::cout << "Gotta invalid flag. Return Code: -1." << std::endl;
        return -1;
    }

    /* Draw triangles! */
    glutInit( &argc, argv );

    glutInitDisplayMode( GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH );

    glutInitWindowSize( windowWidth, windowHeight );
    onWindowResized( windowWidth, windowHeight );
    glutCreateWindow( "triAngels" );

    glutReshapeFunc( onWindowResized );
    glutDisplayFunc( onRender );

    if ( useDefaultDepthCheck ) {
        glutIdleFunc( onRender );
        // ������Ȼ���
        glClearDepth( 1.0 );
        // ������Ȳ���
        glEnable( GL_DEPTH_TEST );
        // ������Ȳ��Ե�����
        glDepthFunc( GL_LEQUAL );
        // ������Ӱƽ��
        glShadeModel( GL_SMOOTH );
    }

    // ��ɫ����
    glClearColor( 1.0, 1.0, 1.0, 1.0f );

    GLenum error = glewInit();
    if ( error != GLEW_OK ) {
        printf( "glew init failure." );
        return 1;
    }

    glutMainLoop();

    return 0;
}