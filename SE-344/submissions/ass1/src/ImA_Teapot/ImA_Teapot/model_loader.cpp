#define _CRT_SECURE_NO_WARNINGS
#include <glm/glm/vec3.hpp>

#include "model_loader.h"

#define MAX_BUF 1024

using std::vector;
using std::string;

bool loadObj( const char* path, vector< glm::vec3 >& out_vertices, vector< glm::vec2 >& out_uvs, vector< glm::vec3 >& out_normals ) {
    vector< unsigned > vertexIndices, uvIndices, normalIndices;
    vector< glm::vec3 > temp_vertices;
    vector< glm::vec2 >      temp_uvs;
    vector< glm::vec3 > temp_normals;
    FILE*                    file = fopen( path, "r" );
    if ( file == NULL ) {
        printf( "Failed to open file." );
        return false;
    }

	while ( true ) {
        char lineHeader[ MAX_BUF ];
        // read the first word of the line
        int res = fscanf( file, "%s", lineHeader );
        if ( res == EOF )
            break;  // EOF = End Of File. Quit the loop.

        // else : parse lineHeader
        if ( strcmp( lineHeader, "v" ) == 0 ) {
            glm::vec3 vertex;
            fscanf( file, "%f %f %fn", &vertex.x, &vertex.y, &vertex.z );
            temp_vertices.push_back( vertex );
        }
        else if ( strcmp( lineHeader, "vt" ) == 0 ) {
            glm::vec2 uv;
            fscanf( file, "%f %fn", &uv.x, &uv.y );
            temp_uvs.push_back( uv );
        }
        else if ( strcmp( lineHeader, "vn" ) == 0 ) {
            glm::vec3 normal;
            fscanf( file, "%f %f %fn", &normal.x, &normal.y, &normal.z );
            temp_normals.push_back( normal );
        }
        else if ( strcmp( lineHeader, "f" ) == 0 ) {
            std::string  vertex1, vertex2, vertex3;
            unsigned int vertexIndex[ 3 ], uvIndex[ 3 ], normalIndex[ 3 ];
            int matches = fscanf_s( file, "%d/%d/%d %d/%d/%d %d/%d/%dn", &vertexIndex[ 0 ], &uvIndex[ 0 ], &normalIndex[ 0 ], &vertexIndex[ 1 ], &uvIndex[ 1 ], &normalIndex[ 1 ], &vertexIndex[ 2 ],
                                  &uvIndex[ 2 ], &normalIndex[ 2 ] );
            if ( matches != 9 ) {
                printf( "File can't be read by our simple parser : ( Try exporting with other optionsn" );
                return false;
            }
            vertexIndices.push_back( vertexIndex[ 0 ] );
            vertexIndices.push_back( vertexIndex[ 1 ] );
            vertexIndices.push_back( vertexIndex[ 2 ] );
            uvIndices.push_back( uvIndex[ 0 ] );
            uvIndices.push_back( uvIndex[ 1 ] );
            uvIndices.push_back( uvIndex[ 2 ] );
            normalIndices.push_back( normalIndex[ 0 ] );
            normalIndices.push_back( normalIndex[ 1 ] );
            normalIndices.push_back( normalIndex[ 2 ] );
        }
        // For each vertex of each triangle
        for ( unsigned int i = 0; i < vertexIndices.size(); i++ ) {
            unsigned int vertexIndex = vertexIndices[ i ];
            glm::vec3    vertex      = temp_vertices[ vertexIndex - 1 ];
            out_vertices.push_back( vertex );
        }
	}
    return true;
}
