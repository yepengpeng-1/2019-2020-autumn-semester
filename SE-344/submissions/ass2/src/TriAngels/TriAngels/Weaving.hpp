#include "Triangle.hpp"
#include <iostream>
#include <vector>

class WeavingManager {
public:
	WeavingManager() {};
	~WeavingManager() {};
	std::vector<Triangle> getWeavingShape() {
		std::vector<Triangle> results;
		int stripCount = 2;
		for (int i = -stripCount; i < stripCount; ++i) {
			getSnakeTriangles(results, -3 * margin, i * margin * 2, true, 8, i % 2);
			getSnakeTriangles(results, i * margin * 2, (int)(-3.5 * margin), false, 8, i % 2);
		}
		return results;
	}

private:
	const double color1r = 112 / 255.0;
	const double color1g = 48 / 255.0;
	const double color1b = 160 / 255.0;

	const double color2r = 68 / 255.0;
	const double color2g = 114 / 255.0;
	const double color2b = 196 / 255.0;

	const int margin = 40;
	const int stripWidth = 40;

	const int depth = 1;
	// 2x fix
	const int ratio = 2;

	void getSnakeTriangles(std::vector<Triangle> &trigs, int x, int y, bool isVertical, size_t count, bool startsUp = true) {
		bool goHigh = startsUp;
		int zStart, zEnd;
		if (goHigh) {
			zStart = depth;
			zEnd = 0;
		}
		else {
			zStart = -depth;
			zEnd = 0;
		}
		for (int i = -1; i <= (int)count; ++i) {

			if (isVertical) {
				auto point1 = TrianglePoint(stripWidth * (i - 1) + x, y, zStart, color1r, color1g, color1b);
				auto point2 = TrianglePoint(stripWidth * (i - 1) + x, y + stripWidth, zStart, color1r, color1g, color1b);
				auto point3 = TrianglePoint(1 + stripWidth * i + x, y, zEnd, color1r, color1g, color1b);
				auto point4 = TrianglePoint(1 + stripWidth * i + x, y + stripWidth, zEnd, color1r, color1g, color1b);

				trigs.push_back(Triangle(point1, point2, point3));
				trigs.push_back(Triangle(point2, point3, point4));
			}
			else {
				auto point1 = TrianglePoint(x, y + stripWidth * (i - 1), 0, color2r, color2g, color2b);
				auto point2 = TrianglePoint(stripWidth + x, y + stripWidth * (i - 1), 0, color2r, color2g, color2b);
				auto point3 = TrianglePoint(x, y + stripWidth * i, 0, color2r, color2g, color2b);
				auto point4 = TrianglePoint(stripWidth + x, y + stripWidth * i, 0, color2r, color2g, color2b);

				trigs.push_back(Triangle(point1, point2, point3));
				trigs.push_back(Triangle(point2, point3, point4));
			}

			int nextEnd;
			if (zStart == 0 && zEnd == depth) {
				nextEnd = 0;
			}
			else if (zStart == depth && zEnd == 0) {
				nextEnd = -depth;
			}
			else if (zStart == 0 && zEnd == -depth) {
				nextEnd = 0;
			}
			else if (zStart == -depth && zEnd == 0) {
				nextEnd = depth;
			}
			else {
				nextEnd = 0;
			}
			zStart = zEnd;
			zEnd = nextEnd;
		}
	}
};