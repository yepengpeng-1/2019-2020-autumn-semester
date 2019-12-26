#include <cmath>
#include <algorithm>

#ifndef TRIANGLE_HPP
#define TRIANGLE_HPP

class TrianglePoint {

public:
	tinyobj::real_t x, y, z;
	double r, g, b;

	bool operator==(const TrianglePoint& rhs) const
	{
		return this->x == rhs.x &&
			this->y == rhs.y &&
			this->z == rhs.z;
	}


	TrianglePoint() {}

	TrianglePoint(tinyobj::real_t X, tinyobj::real_t Y, tinyobj::real_t Z, double R, double G, double B) {
		x = X;
		y = Y;
		z = Z;
		r = std::max(std::min(R, 1.0), 0.0);
		g = std::max(std::min(G, 1.0), 0.0);
		b = std::max(std::min(B, 1.0), 0.0);
	}

	void rotate(double rotation)  {
		x = (x * cos(rotation) + z * sin(rotation));
		z = (z * cos(rotation) + x * sin(rotation));
	}
};

class Triangle {
public:
	TrianglePoint tPoint1, tPoint2, tPoint3;

	bool operator==(const Triangle& rhs) const
	{
		return this->tPoint1 == rhs.tPoint1
			&& this->tPoint2 == rhs.tPoint2
			&& this->tPoint3 == rhs.tPoint3;
	}

	Triangle() {};
	Triangle(TrianglePoint p1, TrianglePoint p2, TrianglePoint p3) {
		tPoint1 = p1;
		tPoint2 = p2;
		tPoint3 = p3;
	}

	void rotate(double rotation) {
		tPoint1.rotate(rotation);
		tPoint2.rotate(rotation);
		tPoint3.rotate(rotation);
	}
};

#endif