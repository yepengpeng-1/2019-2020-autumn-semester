#include "Triangle.hpp"
#include <map>
#include <cmath>
#include <vector>
#include <algorithm>

class DepthChecker {
public:
	DepthChecker(std::vector<Triangle> triangles) {
		trigs = triangles;
		analyse();
	}

	void analyse() {
		mappings.clear();

		int32_t minX = 65535, maxX = -65536, minY = 65535, maxY = -65536;
		for (Triangle tri : trigs) {
			std::vector<TrianglePoint> points = { tri.tPoint1, tri.tPoint2, tri.tPoint3 };
			for (TrianglePoint i : points) {
				if (i.x < minX) {
					minX = i.x;
				}
				if (i.x > maxX) {
					maxX = i.x;
				}
				if (i.y < minY) {
					minY = i.y;
				}
				if (i.y > maxY) {
					maxY = i.y;
				}
			}
		}

		for (int32_t x = minX; x <= maxX; ++x) {
			for (int32_t y = minY; y <= maxY; ++y) {
				for (auto &tri : trigs) {
					double a, b, c, d;
					tri.getPanelEquation(a, b, c, d);
					// equation: ax + by + cz + d = 0;
					int32_t z = (int32_t)((-d - a * x - b * y) / c);

					/*
					{ {u -> - (((P.y - P1.y) (P1.x - P3.x) - (P.x - P1.x) (P1.y -
						P3.y)) / ((P1.y - P2.y) (P1.x - P3.x) - (P1.x - P2.x) (P1.y -
							P3.y))),
						v -> - ((-P.y P1.x + P.x P1.y + P.y P2.x - P1.y P2.x - P.x P2.y +
							P1.x P2.y) / (
								P1.y P2.x - P1.x P2.y - P1.y P3.x + P2.y P3.x + P1.x P3.y -
								P2.x P3.y))}}
					*/

					TrianglePoint P = TrianglePoint(x, y, z, 0.0, 0.0, 0.0);
					TrianglePoint& P1 = tri.tPoint1, & P2 = tri.tPoint2, & P3 = tri.tPoint3;

					double u = -(((P.y - P1.y) * (P1.x - P3.x) - (P.x - P1.x) * (P1.y -
							P3.y)) / double((P1.y - P2.y) * (P1.x - P3.x) - (P1.x - P2.x) * (P1.y -
								P3.y)));

					double v = -((-P.y * P1.x + P.x * P1.y + P.y * P2.x - P1.y * P2.x - P.x * P2.y +
						P1.x * P2.y) / double(
							P1.y * P2.x - P1.x * P2.y - P1.y * P3.x + P2.y * P3.x + P1.x * P3.y -
							P2.x * P3.y));

					double t = 1 - u - v;
					double red = t * P1.r + u * P2.r + v * P3.r;
					double green = t * P1.g + u * P2.g + v * P3.g;
					double blue = t * P1.b + u * P2.b + v * P3.b;

					auto currentPoint = TrianglePoint(x, y, z, red, green, blue);

					if (inTriangle(currentPoint, tri.tPoint1, tri.tPoint2, tri.tPoint3)) {

						auto it = mappings.find(std::pair<int, int>(x, y));
						if (it != mappings.end()) {
							if (it->second.z >= currentPoint.z) {
								continue;
							}
						}
						mappings[std::pair<int, int>(x, y)] = currentPoint;
					}
				}
			}
		}
	}

	std::vector<TrianglePoint> scanLines() {
		std::vector<TrianglePoint> points;
		for (auto it = mappings.begin(); it != mappings.end(); ++it) {
			points.push_back(it->second);
		}
		return points;
	}
private:
	std::vector<Triangle> trigs;
	std::map<std::pair<int, int>, TrianglePoint> mappings;

	int cross(const TrianglePoint& a, const TrianglePoint& b, const TrianglePoint& p)
	{
		return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
	}

	bool toLeft(const TrianglePoint& a, const TrianglePoint& b, const TrianglePoint& p)
	{
		return cross(a, b, p) > 0;
	}

	bool inTriangle(const TrianglePoint& p, const TrianglePoint& a, const TrianglePoint& b, const TrianglePoint& c)
	{
		bool res = toLeft(a, b, p);
		if (res != toLeft(b, c, p)) {
			return false;
		}
		if (res != toLeft(c, a, p)) {
			return false;
		}
		if (cross(a, b, c) == 0) {
			return false;
		}
		return true;
	}
};