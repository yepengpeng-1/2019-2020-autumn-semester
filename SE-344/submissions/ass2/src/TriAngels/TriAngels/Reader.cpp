#include <vector>
#include <fstream>
#include <iostream>
#include <exception>
#include "Triangle.hpp"

std::vector<Triangle> readTriangle(std::string fileName) {
	
	std::vector<Triangle> trigs;
	std::ifstream infs;

	infs.open(fileName, std::fstream::in);

	if (infs.fail()) {
		std::cerr << "Failed to open '" << fileName << "' correctly." << std::endl;
		return trigs;
	}

	int32_t x1, y1, z1, x2, y2, z2, x3, y3, z3;
	double r1, g1, b1, r2, g2, b2, r3, g3, b3;

	char tmp;

	while (!infs.eof()) {
		infs >> x1 >> y1 >> z1
			>> x2 >> y2 >> z2
			>> x3 >> y3 >> z3
			>> r1 >> g1 >> b1
			>> r2 >> g2 >> b2
			>> r3 >> g3 >> b3;

		trigs.push_back(Triangle(x1, y1, z1, r1, g1, b1, x2, y2, z2, r2, g2, b2, x3, y3, z3, r3, g3, b3));

		while (infs.peek() == (int)'\n' || infs.peek() == (int)' ') {
			infs.get();
		}
	}

	infs.close();

	if (trigs.size() == 0) {
		std::cerr << "Successfully opened '" << fileName << "', but failed to parse any triangles." << std::endl;
	}
	else {
		std::cout << "Successfully parsed '" << fileName << "', and got " << trigs.size() << " triangle(s)." << std::endl;
	}
	
	return trigs;
}