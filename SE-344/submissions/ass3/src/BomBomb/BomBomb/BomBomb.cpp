#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <vector>
#include <algorithm>
#include <GL/glew.h>
#include <GL/freeglut.h>
#include <ctime>
#include <random>
#include <iostream>
#include <algorithm>

#define TINYOBJLOADER_IMPLEMENTATION
#include "ObjLoader/tiny_obj_loader.h"
#include "Triangle/Triangle.hpp"

#define PREDEF_SCALE_RATIO 40.0

using namespace std;

std::vector<Triangle> bombBody;
std::vector<Triangle> fireLine;
std::vector<Triangle> sparkles;

void loadObject(bool consistentTriangles, std::string givenPath, double rColor = 1.0, double gColor = 1.0, double bColor = 1.0) {
	if (consistentTriangles) {
		bombBody.clear();
	}
	else {
		fireLine.clear();
	}

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
		// std::cout << "current s = " << s << ", shapes.size() = " << shapes.size() << std::endl;
		// Loop over faces(polygon)
		size_t index_offset = 0, limit_size = shapes[s].mesh.num_face_vertices.size();
		for (size_t f = 0; f < limit_size; f++) {
		//	std::cout << "f = " << f << ", mesh num face vertices.size() == " << shapes[s].mesh.num_face_vertices.size() << std::endl;
			size_t fv = shapes[s].mesh.num_face_vertices[f];
			// std::cout << "mesh.num_face_vertices per is " << fv << std::endl;
			// Loop over vertices in the face.
			assert(fv == 3);
			tinyobj::real_t vx, vy, vz;

			TrianglePoint tp1, tp2, tp3;
			for (size_t v = 0; v < fv; v++) {
				// access to vertex
				tinyobj::index_t idx = shapes[s].mesh.indices[index_offset + v];
				// std::cout << "idx now is " << idx.vertex_index << std::endl;
				vx = attrib.vertices[3 * idx.vertex_index];
				// std::cout << "get vx: " << vx << std::endl;
				vy = attrib.vertices[3 * idx.vertex_index + 1];
				// std::cout << "get vy: " << vy << std::endl;
				vz = attrib.vertices[3 * idx.vertex_index + 2];
				// std::cout << "get vz: " << vz << std::endl;
				switch (v) {
				case 0:
					tp1.x = vx * PREDEF_SCALE_RATIO;
					tp1.y = vy * PREDEF_SCALE_RATIO;
					tp1.z = vz * PREDEF_SCALE_RATIO;
					tp1.r = rColor;
					tp1.g = gColor;
					tp1.b = bColor;
					break;
				case 1:
					tp2.x = vx * PREDEF_SCALE_RATIO;
					tp2.y = vy * PREDEF_SCALE_RATIO;
					tp2.z = vz * PREDEF_SCALE_RATIO;;
					tp2.r = rColor;
					tp2.g = gColor;
					tp2.b = bColor;
					break;
				case 2:
					tp3.x = vx * PREDEF_SCALE_RATIO;;
					tp3.y = vy * PREDEF_SCALE_RATIO;;
					tp3.z = vz * PREDEF_SCALE_RATIO;;
					tp3.r = rColor;
					tp3.g = gColor;
					tp3.b = bColor;
					break;
				}
			}

			if (consistentTriangles) {
				bombBody.push_back(Triangle(tp1, tp2, tp3));
			}
			else {
				fireLine.push_back(Triangle(tp1, tp2, tp3));
			}
			
			// std::cout << "Loop 3 completed" << std::endl;
			index_offset += fv;
		}
		// std::cout << "Loop 2 completed" << std::endl;
	}
	// std::cout << "Loop 1 completed" << std::endl;
}


static int windowWidth = 1024, windowHeight = 1024;

static GLfloat rotationX = 0.0f;
static GLfloat rotationY = 0.0f;
static GLfloat rotationZ = 0.0f;


static void makeExplode() {
	std::cout << "[bomb] Exploded!" << std::endl;
	srand(time(NULL));
}

static void onWindowResized(int w, int h) {
	windowWidth = w, windowHeight = h;
	glViewport(0, 0, w, h);

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
}

static void updateRotation() {
	auto speed = 0.4f;
	rotationX -= speed;
	rotationY -= speed;
	rotationZ -= speed;

	if (rotationX >= 360.0) {
		rotationX -= 360.0;
	}
	else if (rotationX < 0.0) {
		rotationX += 360.0;
	}

	if (rotationY >= 360.0) {
		rotationY -= 360.0;
	}
	else if (rotationY < 0.5) {
		rotationY += 360.0;
	}

	if (rotationZ >= 360.0) {
		rotationZ -= 360.0;
	}
	else if (rotationZ < 0.0) {
		rotationZ += 360.0;
	}
}

bool exploded = false;

static void onRender() {
	GLfloat sparkx, sparky, sparkz;
	if (!exploded && fireLine.size() != 0) {
		auto lastOne = fireLine[fireLine.size() - 1];
		sparkx = lastOne.tPoint1.x * PREDEF_SCALE_RATIO;
		sparky = lastOne.tPoint2.y * PREDEF_SCALE_RATIO;
		sparkz = lastOne.tPoint3.z * PREDEF_SCALE_RATIO;
		if (rand() % 3 == 0) {
			fireLine.pop_back();
		}
	}
	else {
		if (!exploded) {
			exploded = true;
			makeExplode();
		}
		else {
			for (auto& i : bombBody) {
				if (abs(i.tPoint1.x) > 100.0) {
					bombBody.erase(std::remove(bombBody.begin(), bombBody.end(), i), bombBody.end());
					auto point = i.tPoint1;
					// std::cout << "Removed sparks at (" << point.x << ", " << point.y << ", " << point.z << ")" << std::endl;
					continue;
				}

				double x_movep = (rand() / double(RAND_MAX) / 20.0 + 1.0);
				double y_movep = (rand() / double(RAND_MAX) / 20.0 + 1.0);
				double z_movep = (rand() / double(RAND_MAX) / 20.0 + 1.0);
				
				i.tPoint1.r = rand() / double(RAND_MAX);
				i.tPoint1.g = rand() / double(RAND_MAX);
				i.tPoint1.b = rand() / double(RAND_MAX);
				i.tPoint1.x *= x_movep;
				i.tPoint1.y *= y_movep;
				i.tPoint1.z *= z_movep;

				x_movep = (rand() / double(RAND_MAX) / 20.0 + 1.0);
				y_movep = (rand() / double(RAND_MAX) / 20.0 + 1.0);
				z_movep = (rand() / double(RAND_MAX) / 20.0 + 1.0);

				i.tPoint2.r = rand() / double(RAND_MAX);
				i.tPoint2.g = rand() / double(RAND_MAX);
				i.tPoint2.b = rand() / double(RAND_MAX);
				i.tPoint2.x *= x_movep;
				i.tPoint2.y *= y_movep;
				i.tPoint2.z *= z_movep;

				x_movep = (rand() / double(RAND_MAX) / 20.0 + 1.0);
				y_movep = (rand() / double(RAND_MAX) / 20.0 + 1.0);
				z_movep = (rand() / double(RAND_MAX) / 20.0 + 1.0);

				i.tPoint3.r = rand() / double(RAND_MAX);
				i.tPoint3.g = rand() / double(RAND_MAX);
				i.tPoint3.b = rand() / double(RAND_MAX);
				i.tPoint3.x *= x_movep;
				i.tPoint3.y *= y_movep;
				i.tPoint3.z *= z_movep;
			}
		}
	}

	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


	if (!exploded) {

		const GLfloat light_ambient[] = { 0.1f,0.1f,0.2f,1.0f };
		const GLfloat light_diffuse[] = { 1.0f,1.0f,1.0f,1.0f };
		const GLfloat light_specular[] = { 1.0f,1.0f,1.0f,1.0f };
		const GLfloat light_position[] = { 0.0f,0.0f,0.0f,1.0f };

		glLightfv(GL_LIGHT0, GL_POSITION, light_position);

		glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient);

		// glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse);

		// glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular);

		glEnable(GL_LIGHT0);


		const GLfloat spark_position[] = { sparkx, sparky, sparkz, 1.0f };

		glLightfv(GL_LIGHT1, GL_POSITION, spark_position);

		glLightfv(GL_LIGHT1, GL_DIFFUSE, light_diffuse);

		// glLightfv(GL_LIGHT1, GL_SPECULAR, light_specular);

		glEnable(GL_LIGHT1);

		glEnable(GL_LIGHTING);

		GLfloat mat_ambient[] = { 0.4f,0.4f,0.4f,1.0f };

		GLfloat mat_diffuse[] = { 0.4f,0.4f,0.4f,1.0f };

		GLfloat mat_specular[] = { 0.7f,0.7f,0.7f,1.0f };

		GLfloat mat_emission[] = { 0.0f,0.0f,0.0f,1.f };

		GLfloat mat_shininess = 60.0f;


		glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient);

		glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);

		glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);

		glMaterialfv(GL_FRONT, GL_EMISSION, mat_emission);

		glMaterialf(GL_FRONT, GL_SHININESS, mat_shininess);

	}
	else {
		glDisable(GL_LIGHTING);
	}

	glLoadIdentity();
	updateRotation();

	glRotatef(rotationX, 1.0, 0.0, 0.0);
	glRotatef(rotationY, 0.0, 1.0, 0.0);
	glRotatef(rotationZ, 0.0, 0.0, 1.0);

	glColor3d(0.6, 0.6, 0.7);
	for (float i = -50; i <= 50; i += 0.2f) {

		glBegin(GL_LINES);

		glVertex3f(-50, 0, i);
		glVertex3f(50, 0, i);

		glVertex3f(i, 0, -50);
		glVertex3f(i, 0, 50);

		glEnd();
	}

	double ratio = 150.0;

	glBegin(GL_TRIANGLES);

	// int counter = 1;
	for (auto i : bombBody) {
		auto point = i.tPoint1;
		glColor3d(point.r, point.g, point.b);
		// std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
		glVertex3d(point.x / ratio, point.y / ratio, point.z / ratio);

		point = i.tPoint2;
		glColor3d(point.r, point.g, point.b);
		// std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
		glVertex3d(point.x / ratio, point.y / ratio, point.z / ratio);

		point = i.tPoint3;
		glColor3d(point.r, point.g, point.b);
		// std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
		glVertex3d(point.x / ratio, point.y / ratio, point.z / ratio);

		// std::cout << "draw a triangle #" << counter << std::endl;
		// counter += 1;
	}

	if (!exploded) {

		GLfloat line_ambient[] = { 0.9f,0.5f,0.0f,1.0f };

		GLfloat line_diffuse[] = { 0.8f,0.4f,0.0f,1.0f };

		GLfloat line_specular[] = { 0.7f,0.7f,0.7f,1.0f };

		GLfloat line_emission[] = { 0.0f,0.0f,0.0f,1.f };

		GLfloat line_shininess = 0.0f;

		glMaterialfv(GL_FRONT, GL_AMBIENT, line_ambient);

		glMaterialfv(GL_FRONT, GL_DIFFUSE, line_diffuse);

		glMaterialfv(GL_FRONT, GL_SPECULAR, line_specular);

		glMaterialfv(GL_FRONT, GL_EMISSION, line_emission);

		glMaterialf(GL_FRONT, GL_SHININESS, line_shininess);

		// int counter = 1;
		for (auto i : fireLine) {
			auto point = i.tPoint1;
			glColor3d(point.r, point.g, point.b);
			// std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
			glVertex3d(point.x / ratio, point.y / ratio, point.z / ratio);

			point = i.tPoint2;
			glColor3d(point.r, point.g, point.b);
			// std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
			glVertex3d(point.x / ratio, point.y / ratio, point.z / ratio);

			point = i.tPoint3;
			glColor3d(point.r, point.g, point.b);
			// std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
			glVertex3d(point.x / ratio, point.y / ratio, point.z / ratio);

			// std::cout << "draw a triangle #" << counter << std::endl;
			// counter += 1;
		}

	}
	glEnd();

	glutSwapBuffers();
}


int main(int argc, char** argv)
{
	loadObject(true, "bomb_body.obj", 0.0, 0.0, 0.0);
	loadObject(false, "bomb_line.obj", 0.3, 0.3, 0.0);

	/* Draw triangles! */
	glutInit(&argc, argv);

	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH);

	glutInitWindowSize(windowWidth, windowHeight);
	onWindowResized(windowWidth, windowHeight);
	glutCreateWindow("BomBomb");

	glutReshapeFunc(onWindowResized);
	glutDisplayFunc(onRender);


	glutIdleFunc(onRender);

	glClearDepth(1.0);

	glEnable(GL_DEPTH_TEST);

	glDepthFunc(GL_LEQUAL);

	glShadeModel(GL_SMOOTH);

	glClearColor(1.0, 1.0, 1.0, 1.0f);

	GLenum error = glewInit();
	if (error != GLEW_OK) {
		printf("glew init failure.");
		return 1;
	}

	glutMainLoop();

	return 0;
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
