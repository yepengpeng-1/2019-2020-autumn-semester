#pragma once

#include <GL/glew.h>
#include <GL/freeglut.h>
#include <SOIL/SOIL.h>
#include <string>

namespace TM {
static GLuint loadTexture( std::string filename ) {
    const GLint new_width = 256;
    const GLint new_height = 256;

    GLuint tex;
    glGenTextures( 1, &tex );
    glBindTexture( GL_TEXTURE_2D, tex );

    // load image content and build texture by image
    int  width, height;
    auto image = SOIL_load_image( filename.c_str(), &width, &height, 0, SOIL_LOAD_RGB );
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, image );

    // must remember to release the image buffer
    SOIL_free_image_data( image );

    // automatically extend border color to edges
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );

    // use linear filter
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );

    return tex;
}
};  // namespace TM