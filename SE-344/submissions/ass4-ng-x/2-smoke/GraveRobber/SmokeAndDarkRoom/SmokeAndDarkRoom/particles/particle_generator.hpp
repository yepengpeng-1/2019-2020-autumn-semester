#pragma once

#include <ctime>
#include <random>
#include <vector>
#include <mutex>

// random generator issues
static bool init = true;

static std::mutex mtx;

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

    float alpha;
    bool  valid;
};

class ParticleMaster {
private:
    size_t width, height;
    size_t maxParticles = 0;
    const float spriteSize = 50.0f;
public:
    bool keepRetrobriting = true;
    std::vector< Particle > particles;
    ParticleMaster( size_t viewWidth, size_t viewHeight, size_t particleAmount ) {
        width  = viewWidth;
        height = viewHeight;
       
        maxParticles = particleAmount * 2;

        for ( size_t i = 0; i < particleAmount; ++i ) {
            Particle particle;
            particle.posx = random_int() % viewWidth, particle.posy = random_int() % viewHeight;
            particle.spdx = random_double() - 0.5f, particle.spdy = random_double() - 0.5f;
            particle.alpha = 0.5f + random_double() / 2.0f;
            particle.valid = true;
            particles.push_back( particle );
        }
    }

    void removeInvalid() {
        if (!mtx.try_lock()) {
            return;
        }
        for (auto iter = particles.begin(); distance(particles.begin(), iter) < particles.size(); )
        {
            if (!iter->valid)
            {
                iter = particles.erase(iter);
            }
            else {
                iter++;
            }
        }
        mtx.unlock();
    }

    void updateParticles() {
        if (!mtx.try_lock()) {
            return;
        }
        size_t currentSize = particles.size();
        for ( size_t i = 0; i < currentSize; ++i ) {
            auto p = particles[ i ];
            if ( !p.valid ) {
                continue;
            }
            p.posx += p.spdx / 10.0f;
            p.posy += p.spdy / 10.0f;
            p.alpha += random_double() / 50.0 - 0.01f;
            if (p.alpha <= 0.0f) {
                p.valid = false;
                particles[i] = p;
                continue;
            }
            if ( p.posx < -spriteSize || p.posy < -spriteSize || p.posx > width + spriteSize|| p.posy > height + spriteSize ) {
                p.valid = false;
                particles[i] = p;
                continue;
            }

            if (keepRetrobriting && particles.size() < maxParticles) {
                Particle newp;
                newp.posx = p.posx;
                newp.posy = p.posy;
                newp.spdx = -p.spdx;
                newp.spdy = -p.spdy;
                newp.alpha = sqrt(p.alpha);
                newp.valid = true;
                particles.push_back(newp);
            }
            p.spdx += random_double() - 0.5f;
            p.spdy += random_double() - 0.5f;
            particles[i] = p;
        }

        mtx.unlock();

        removeInvalid();
    }
};