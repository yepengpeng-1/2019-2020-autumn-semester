#pragma once

/*
#include <GL/glew.h>
// first glew, then glut
#include <GL/freeglut.h>
#include <cstdio>


GLuint LoadTexture( std::string filename, int width, int height ) {

    GLuint         texture;
    unsigned char* data;

    //读文件
    FILE* file = fopen( filename.c_str(), "rb" );
    if ( file == nullptr ) {
        return 0;
    }
    data = ( unsigned char* )malloc( width * height * 3 );
    fread( data, width * height * 3, 1, file );
    fclose( file );

    glGenTextures( 1, &texture );
    glBindTexture( GL_TEXTURE_2D, texture );
    glTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

    //线性滤图
    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );

    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );

    glTexImage2D( GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_BGR_EXT, GL_UNSIGNED_BYTE, data );
    free( data );
    return texture;
}
*/