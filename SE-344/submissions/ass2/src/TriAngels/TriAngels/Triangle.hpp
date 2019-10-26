#include <cmath>
#include <algorithm>

#ifndef TRIANGLE_HPP
#define TRIANGLE_HPP

class TrianglePoint {

public:
	int32_t x, y, z;
	double r, g, b;

	TrianglePoint() {}

	TrianglePoint(int32_t X, int32_t Y, int32_t Z, double R, double G, double B) {
		x = X;
		y = Y;
		z = Z;
		r = std::max(std::min(R, 1.0), 0.0);
		g = std::max(std::min(G, 1.0), 0.0);
		b = std::max(std::min(B, 1.0), 0.0);
	}

	void rotate(double rotation)  {
		x = int32_t(x * cos(rotation) + z * sin(rotation));
		z = int32_t(z * cos(rotation) + x * sin(rotation));
	}
};

class Triangle {
public:
	TrianglePoint tPoint1, tPoint2, tPoint3;

	Triangle() {};
	Triangle(TrianglePoint p1, TrianglePoint p2, TrianglePoint p3) {
		tPoint1 = p1;
		tPoint2 = p2;
		tPoint3 = p3;
	}
	Triangle(int32_t tP1x, int32_t tP1y, int32_t tP1z, double tP1r, double tP1g, double tP1b,
			 int32_t tP2x, int32_t tP2y, int32_t tP2z, double tP2r, double tP2g, double tP2b,
			 int32_t tP3x, int32_t tP3y, int32_t tP3z, double tP3r, double tP3g, double tP3b) {
		tPoint1 = TrianglePoint(tP1x, tP1y, tP1z, tP1r, tP1g, tP1b);
		tPoint2 = TrianglePoint(tP2x, tP2y, tP2z, tP2r, tP2g, tP2b);
		tPoint3 = TrianglePoint(tP3x, tP3y, tP3z, tP3r, tP3g, tP3b);
	}

	void rotate(double rotation) {
		tPoint1.rotate(rotation);
		tPoint2.rotate(rotation);
		tPoint3.rotate(rotation);
	}


	void getPanelEquation(double& a, double& b, double& c, double& d)
	{
		auto& p1 = tPoint1, & p2 = tPoint2, & p3 = tPoint3;
		a = ((p2.y - p1.y) * (p3.z - p1.z) - (p2.z - p1.z) * (p3.y - p1.y));
		b = ((p2.z - p1.z) * (p3.x - p1.x) - (p2.x - p1.x) * (p3.z - p1.z));
		c = ((p2.x - p1.x) * (p3.y - p1.y) - (p2.y - p1.y) * (p3.x - p1.x));
		d = (0 - (a * p1.x + b * p1.y + c * p1.z));
	}
};

#endif