
#include <GL/glew.h>
// idiot clang-format
#include <GL/freeglut.h>
// stupid

// do not mess with that.
#define PREDEF_SCALE_RATIO 0.5;

#define TINYOBJLOADER_IMPLEMENTATION
#include "ObjLoader/tiny_obj_loader.h"
#include "Triangle/Triangle.hpp"
#include <iostream>

void loadObjObject( std::vector< Triangle >& target, std::string givenPath, double rColor = 1.0, double gColor = 1.0, double bColor = 1.0 ) {

    target.clear();

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
        std::cout << "failed to parse anything." << std::endl;
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

                    tp2.r = rColor;
                    tp2.g = gColor;
                    tp2.b = bColor;
                    break;
                case 2:
                    tp3.x = vx * PREDEF_SCALE_RATIO;
                    tp3.y = vy * PREDEF_SCALE_RATIO;
                    tp3.z = vz * PREDEF_SCALE_RATIO;

                    tp3.r = rColor;
                    tp3.g = gColor;
                    tp3.b = bColor;
                    break;
                }
            }

            target.push_back( Triangle( tp1, tp2, tp3 ) );

            // std::cout << "Loop 3 completed" << std::endl;
            index_offset += fv;
        }
        // std::cout << "Loop 2 completed" << std::endl;
    }
    // std::cout << "Loop 1 completed" << std::endl;
}
