#include <vector>
#include <iostream>
#include <GL/glew.h>
#include <GL/freeglut.h>

#include "Reader.h"
#include "Triangle.hpp"

int main() {
	int inputFlag;

	std::cout << "Please input a number to pick the phase of this assignment: " << std::endl
			  << "\t1 - Overlapping Triangles" << std::endl
			  << "\t2 - Intersecting Triangles" << std::endl
			  << "\t3 - Weaving Rectangles" << std::endl
			  << "\nMake your choice: >>> ";

	std::cin >> inputFlag;

	if (inputFlag == 1) {
		std::string path;
		std::cout << "Please provide the .tri file's path (relatively). \nOr, use '../../../resources/overlapping.tri' by default." << std::endl;

		std::cin >> path;

		if (path == "!") {
			path = "../../../resources/overlapping.tri";
		}
		std::vector<Triangle> triangles = readTriangle(path);
	}
	else if (inputFlag == 2) {
		std::string path;
		std::cout << "Please provide the .tri file's path (relatively). \nOr, use '../../../resources/intersecting.tri' by default." << std::endl;

		std::cin >> path;
		
		if (path == "!") {
			path = "../../../resources/intersecting.tri";
		}
		std::vector<Triangle> triangles = readTriangle(path);
	}
	else if (inputFlag == 3) {

	}
	else {
		std::cout << "Gotta invalid flag. Return Code: -1." << std::endl;
		return -1;
	}
	return 0;
}