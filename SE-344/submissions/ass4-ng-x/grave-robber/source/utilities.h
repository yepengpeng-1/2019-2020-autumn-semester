#pragma once

enum SceneIndex {
    TEST_SCENE = 0,  /* used for testing faces and vertices */
    BOOKTITLE_SCENE, /* used for the title "grave robber journal" */
    DARKROOM_SCENE,  /* used for the dark room scene before the handy light appears */
    STONEHEAP_SCENE, /* used for the stone heap scene after the light and before the bomb */
    BOMB_SCENE,      /* used for the bombing stone scene*/
    BUDDHA_SCENE,    /* used for the ridiculous foolish buddha statue scene*/
    OVER_SCENE       /* used for quitting the app */
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
    float3 a, b, c;
};