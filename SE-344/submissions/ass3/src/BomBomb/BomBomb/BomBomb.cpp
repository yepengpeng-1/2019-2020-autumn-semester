#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <vector>
#include <algorithm>
#include <GL/glew.h>
#include <GL/freeglut.h>
#include <ctime>
#include <iostream>

#define TINYOBJLOADER_IMPLEMENTATION
#include "ObjLoader/tiny_obj_loader.h"
#include "Triangle/Triangle.hpp"


using namespace std;

void loadObject(std::string givenPath, double rColor = 1.0, double gColor = 1.0, double bColor = 1.0) {
	std::string inputfile = givenPath;
	tinyobj::attrib_t attrib;
	std::vector<tinyobj::shape_t> shapes;
	std::vector<tinyobj::material_t> materials;

	std::string warn;
	std::string err;

	bool ret = tinyobj::LoadObj(&attrib, &shapes, &materials, &warn, &err, inputfile.c_str());

	
	if (!warn.empty()) {
		std::cout << "When loading " << inputfile << ", warning occured: \n";
		std::cerr << warn << std::endl;
	}

	if (!err.empty()) {
		std::cout << "When loading " << inputfile << ", error occured: \n";
		std::cerr << err << std::endl;
	}

	if (!ret) {
		exit(1);
	}
	// Loop over shapes
	size_t shape_size = shapes.size();
	for (size_t s = 0; s < shape_size; s++) {
		std::cout << "current s = " << s << ", shapes.size() = " << shapes.size() << std::endl;
		// Loop over faces(polygon)
		size_t index_offset = 0, limit_size = shapes[s].mesh.num_face_vertices.size();
		for (size_t f = 0; f < limit_size; f++) {
			std::cout << "f = " << f << ", mesh num face vertices.size() == " << shapes[s].mesh.num_face_vertices.size() << std::endl;
			size_t fv = shapes[s].mesh.num_face_vertices[f];
			std::cout << "mesh.num_face_vertices per is " << fv << std::endl;
			// Loop over vertices in the face.
			for (size_t v = 0; v < fv; v++) {
				// access to vertex
				tinyobj::index_t idx = shapes[s].mesh.indices[index_offset + v];
				std::cout << "idx now is " << idx.vertex_index << std::endl;
				tinyobj::real_t vx = attrib.vertices[3 * idx.vertex_index];
				std::cout << "get vx: " << vx << std::endl;
				tinyobj::real_t vy = attrib.vertices[3 * idx.vertex_index + 1];
				std::cout << "get vy: " << vy << std::endl;
				tinyobj::real_t vz = attrib.vertices[3 * idx.vertex_index + 2];
				std::cout << "get vz: " << vz << std::endl;
			}
			std::cout << "Loop 3 completed" << std::endl;
			index_offset += fv;
		}
		std::cout << "Loop 2 completed" << std::endl;
	}
	std::cout << "Loop 1 completed" << std::endl;
}

int main()
{
	loadObject("../../../models/bomb.obj");
}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门使用技巧: 
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件
