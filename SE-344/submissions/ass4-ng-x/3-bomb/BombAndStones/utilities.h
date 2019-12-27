#pragma once
#include <cstdint>
#include <ctime>
namespace UT {

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

enum SceneIndex {
    TEST_SCENE = 0,  /* used for testing faces and vertices */
    BOOKTITLE_SCENE, /* used for the title "grave robber journal" */
    DARKROOM_SCENE,  /* used for the dark room scene before the handy light appears */
    STONEHEAP_SCENE, /* used for the stone heap scene after the light and before the bomb */
    BOMB_SCENE,      /* used for the bombing stone scene*/
    BUDDHA_SCENE     /* used for the ridiculous foolish buddha statue scene*/
};

struct float2 {
    float x, y;
};
struct float3 {
    float x, y, z;
};
struct double3 {
    double x, y, z;
};
struct uint3 {
    uint32_t x, y, z;
};
struct uint4 {
    uint32_t x, y, z, w;
};
struct triangle {
    // vertex location (x, y, z)
    float3 a, b, c;

    // normal direction (nx, ny, nz)
    float3 na, nb, nc;

    // texture mapping coordinates (u, v)
    float2 ta, tb, tc;
};
struct Pixel {
    float r, g, b;
    float x, y;
};
}  // namespace UT