// SmokeAndDarkRoom.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <GL/glew.h>
// idiot clang-format
#include <GL/freeglut.h>
#include <algorithm>
#include <assert.h>
#include <ctime>
#include <iostream>
#include <random>
#include <vector>

#include "ObjLoader/tiny_obj_loader.h"
#include "PlyLoader/PlyReaderWrapped.hpp"
#include "triangle/Triangle.hpp"

#define PREDEF_SCALE_RATIO 40.0

static int windowWidth = 1024, windowHeight = 1024;

static void onWindowResized( int w, int h ) {
    windowWidth = w, windowHeight = h;
    glViewport( 0, 0, w, h );

    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();
}

std::vector< Triangle > fragments;

static void onRender() {
    GLfloat sparkx, sparky, sparkz;

    glLoadIdentity();
    updateRotation();

    glRotatef( rotationX, 1.0, 0.0, 0.0 );
    glRotatef( rotationY, 0.0, 1.0, 0.0 );
    glRotatef( rotationZ, 0.0, 0.0, 1.0 );

    glColor3d( 0.6, 0.6, 0.7 );
    for ( float i = -50; i <= 50; i += 0.2f ) {

        glBegin( GL_LINES );

        glVertex3f( -50, 0, i );
        glVertex3f( 50, 0, i );

        glVertex3f( i, 0, -50 );
        glVertex3f( i, 0, 50 );

        glEnd();
    }

    double ratio = 150.0;

    glBegin( GL_TRIANGLES );

    // int counter = 1;
    for ( auto i : bombBody ) {
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

    GLfloat line_ambient[] = { 0.9f, 0.5f, 0.0f, 1.0f };

    GLfloat line_diffuse[] = { 0.8f, 0.4f, 0.0f, 1.0f };

    GLfloat line_specular[] = { 0.7f, 0.7f, 0.7f, 1.0f };

    GLfloat line_emission[] = { 0.0f, 0.0f, 0.0f, 1.f };

    GLfloat line_shininess = 0.0f;

    glMaterialfv( GL_FRONT, GL_AMBIENT, line_ambient );

    glMaterialfv( GL_FRONT, GL_DIFFUSE, line_diffuse );

    glMaterialfv( GL_FRONT, GL_SPECULAR, line_specular );

    glMaterialfv( GL_FRONT, GL_EMISSION, line_emission );

    glMaterialf( GL_FRONT, GL_SHININESS, line_shininess );

    // int counter = 1;
    for ( auto i : fragments ) {
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

    glutSwapBuffers();
}

void loadObject( std::vector< Triangle >& result, std::string givenPath, double rColor = 1.0, double gColor = 1.0, double bColor = 1.0 ) {

    std::string                        inputfile = givenPath;
    tinyobj::attrib_t                  attrib;
    std::vector< tinyobj::shape_t >    shapes;
    std::vector< tinyobj::material_t > materials;

    std::string warn;
    std::string err;

    bool ret = tinyobj::LoadObj( &attrib, &shapes, &materials, &warn, &err, inputfile.c_str() );

    if ( !warn.empty() ) {
        std::cout << "When loading " << inputfile << ", warning occured: \n";
        std::cerr << warn << std::endl;
    }

    if ( !err.empty() ) {
        std::cout << "When loading " << inputfile << ", error occured: \n";
        std::cerr << err << std::endl;
    }

    if ( !ret ) {
        exit( 1 );
    }
    // Loop over shapes
    size_t shape_size = shapes.size();
    for ( size_t s = 0; s < shape_size; s++ ) {
        // std::cout << "current s = " << s << ", shapes.size() = " << shapes.size() << std::endl;
        // Loop over faces(polygon)
        size_t index_offset = 0, limit_size = shapes[ s ].mesh.num_face_vertices.size();
        for ( size_t f = 0; f < limit_size; f++ ) {
            //	std::cout << "f = " << f << ", mesh num face vertices.size() == " << shapes[s].mesh.num_face_vertices.size() << std::endl;
            size_t fv = shapes[ s ].mesh.num_face_vertices[ f ];
            // std::cout << "mesh.num_face_vertices per is " << fv << std::endl;
            // Loop over vertices in the face.
            assert( fv == 3 );
            tinyobj::real_t vx, vy, vz;

            TrianglePoint tp1, tp2, tp3;
            for ( size_t v = 0; v < fv; v++ ) {
                // access to vertex
                tinyobj::index_t idx = shapes[ s ].mesh.indices[ index_offset + v ];
                // std::cout << "idx now is " << idx.vertex_index << std::endl;
                vx = attrib.vertices[ 3 * idx.vertex_index ];
                // std::cout << "get vx: " << vx << std::endl;
                vy = attrib.vertices[ 3 * idx.vertex_index + 1 ];
                // std::cout << "get vy: " << vy << std::endl;
                vz = attrib.vertices[ 3 * idx.vertex_index + 2 ];
                // std::cout << "get vz: " << vz << std::endl;
                switch ( v ) {
                case 0:
                    tp1.x = vx * PREDEF_SCALE_RATIO;
                    tp1.y = vy * PREDEF_SCALE_RATIO;
                    tp1.z = vz * PREDEF_SCALE_RATIO;
                    tp1.r = rColor;
                    tp1.g = gColor;
                    tp1.b = bColor;
                    break;
                case 1:
                    tp2.x = vx * PREDEF_SCALE_RATIO;
                    tp2.y = vy * PREDEF_SCALE_RATIO;
                    tp2.z = vz * PREDEF_SCALE_RATIO;
                    ;
                    tp2.r = rColor;
                    tp2.g = gColor;
                    tp2.b = bColor;
                    break;
                case 2:
                    tp3.x = vx * PREDEF_SCALE_RATIO;
                    ;
                    tp3.y = vy * PREDEF_SCALE_RATIO;
                    ;
                    tp3.z = vz * PREDEF_SCALE_RATIO;
                    ;
                    tp3.r = rColor;
                    tp3.g = gColor;
                    tp3.b = bColor;
                    break;
                }
            }

            result.push_back( Triangle( tp1, tp2, tp3 ) );

            // std::cout << "Loop 3 completed" << std::endl;
            index_offset += fv;
        }
        // std::cout << "Loop 2 completed" << std::endl;
    }
    // std::cout << "Loop 1 completed" << std::endl;
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

    glClearDepth( 1.0 );

    glEnable( GL_DEPTH_TEST );

    glDepthFunc( GL_LEQUAL );

    glShadeModel( GL_SMOOTH );

    glClearColor( 1.0, 1.0, 1.0, 1.0f );

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
