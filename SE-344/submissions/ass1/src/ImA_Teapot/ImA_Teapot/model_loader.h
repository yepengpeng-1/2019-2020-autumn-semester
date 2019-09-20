#pragma once
#include <stdio.h>
#include <vector>
#include <string>
#include <glm/glm/vec2.hpp>
#include <glm/glm/vec3.hpp>
bool loadObj( const char* path, std::vector< glm::vec3 >& out_vertices, std::vector< glm::vec2 >& out_uvs, std::vector< glm::vec3 >& out_normals );