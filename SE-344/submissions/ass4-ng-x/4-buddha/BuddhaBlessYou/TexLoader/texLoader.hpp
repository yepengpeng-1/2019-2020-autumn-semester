#pragma once

#include "../utilities.h"
#include <GL/glew.h>
#include <GL/freeglut.h>
#include <SOIL/SOIL.h>
#include <string>
#include <vector>


namespace TM {
    using namespace UT;
static GLuint loadTexture( std::string filename ) {

    GLuint tex;
    glGenTextures( 1, &tex );
    glBindTexture( GL_TEXTURE_2D, tex );

    // load image content and build texture by image
    int  width, height;
    auto image = SOIL_load_image( filename.c_str(), &width, &height, 0, SOIL_LOAD_RGB );
    glTexImage2D( GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, image );

    // must remember to release the image buffer
    SOIL_free_image_data( image );

    // automatically extend border color to edges
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );

    // use linear filter
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );

    return tex;
}

static void loadImage( std::vector< Pixel >& pixels, std::string filename, int& width, int& height ) {
    auto buffer     = SOIL_load_image( filename.c_str(), &width, &height, 0, SOIL_LOAD_RGB );
    auto imageWidth = width, imageHeight = height;
    for ( size_t i = 0; i < imageWidth; i++ ) {
        for ( size_t j = 0; j < imageHeight; j++ ) {
            float r = buffer[ 3 * ( j * imageWidth + i ) + 0 ] / 255.0f;
            float g = buffer[ 3 * ( j * imageWidth + i ) + 1 ] / 255.0f;
            float b = buffer[ 3 * ( j * imageWidth + i ) + 2 ] / 255.0f;
            if ( r + g + b < 0.07f ) {
                // ignore dim pixels
                continue;
            }
            Pixel pixel;
            pixel.r = r, pixel.g = g, pixel.b = b;
            pixel.x = ( i * 2.0 ) / imageWidth - 1.0f;
            pixel.y = ( j * 2.0 ) / imageHeight - 1.0f;
            pixels.push_back( pixel );
        }
    }
}
};  // namespace TM