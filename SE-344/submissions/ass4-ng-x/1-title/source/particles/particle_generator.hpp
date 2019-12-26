#pragma once

#include <ctime>
#include <random>
#include <vector>

// random generator issues
static bool init = true;

static int random_int() {
    if ( init ) {
        srand( unsigned( time( 0 ) ) );
        init = false;
    }
    return rand();
}

static double random_double() {
    if ( init ) {
        srand( time( 0 ) );
        init = false;
    }
    return double( rand() ) / RAND_MAX;
}

struct Particle {
    float posx, posy;
    float spdx, spdy;
    bool  valid;
};

class ParticleMaster {
private:
    size_t width, height;

public:
    std::vector< Particle > particles;
    ParticleMaster( size_t viewWidth, size_t viewHeight, size_t particleAmount ) {
        width  = viewWidth;
        height = viewHeight;

        for ( size_t i = 0; i < particleAmount; ++i ) {
            Particle particle;
            particle.posx = random_int() % viewWidth, particle.posy = random_int() % viewHeight;
            particle.spdx = random_double() - 0.5f, particle.spdy = random_double() - 0.5f;
            particle.valid = true;
            particles.push_back( particle );
        }
    }

    void updateParticles() {
        for ( size_t i = 0; i < particles.size(); ++i ) {
            auto& p = particles[ i ];
            if ( !p.valid ) {
                continue;
            }
            p.posx += p.spdx;
            p.posy += p.spdy;
            if ( p.posx < 0 || p.posy < 0 || p.posx > width || p.posy > height ) {
                p.valid = false;
                continue;
            }
            p.spdx += random_double() - 0.5f;
            p.spdy += random_double() - 0.5f;
        }
    }

    void writeBuffer( modelRecordT buf ) {
        size_t counter = 0;
        float* buffer  = buf->buffer;
        for ( size_t i = 0; i < particles.size(); ++i ) {
            if ( particles[ i ].valid ) {
                buffer[ counter * 3 + 0 ] = particles[ i ].posx;
                buffer[ counter * 3 + 1 ] = particles[ i ].posy;
                buffer[ counter * 3 + 2 ] = 0.0f;
                ++counter;
            }
        }
        buf->size = counter;
    }
};