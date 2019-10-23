#include <ctime>
#include <vector>
#include <iostream>
#include <GL/glew.h>
#include <GL/freeglut.h>
#include "Reader.h"
#include "Triangle.hpp"

using namespace std;

static int windowWidth = 1280, windowHeight = 720;

static GLfloat rotationX = 0.0f;
static GLfloat rotationY = 0.0f;
static GLfloat rotationZ = 0.0f;

static GLfloat speedX = 0.0f;
static GLfloat speedY = 0.0f;
static GLfloat speedZ = 0.0f;

static GLfloat const maxSpeedLimit = 0.5f;

static std::vector<Triangle> triangles;

static bool useDefaultDepthCheck = true;

static void onWindowResized(int w, int h)
{
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

static void onRender()
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glLoadIdentity();
	updateRotation();

	
	glRotatef(rotationX, 1.0, 0.0, 0.0);
	glRotatef(rotationY, 0.0, 1.0, 0.0);
	glRotatef(rotationZ, 0.0, 0.0, 1.0);

	glColor3d(0.6, 0.6, 0.7);
	for (float i = -50; i <= 50; i += 1)
	{
		/** 绘制线 */
		glBegin(GL_LINES);

		/** X轴方向 */
		glVertex3f(-50, 0, i);
		glVertex3f(50, 0, i);

		/** Z轴方向 */
		glVertex3f(i, 0, -50);
		glVertex3f(i, 0, 50);

		glEnd();
	}


	
	// glViewport(0, 0, windowWidth, windowHeight);
	glBegin(GL_TRIANGLES);
	//glColor3d(1.0, 0.0, 0.0);
	//glVertex3i(1, 1, 0);

	//glColor3d(1.0, 1.0, 0.0);
	//glVertex3i(0, 1, 0);

	//glColor3d(1.0, 0.0, 1.0);
	//glVertex3i(0, 1, 1);

	// glColor3f(0.0, 1.0, 1.0);
	if (useDefaultDepthCheck) {
		double ratio = 100.0;
		int counter = 1;
		for (auto i : triangles) {
			auto point = i.tPoint1;
			glColor3d(point.r, point.g, point.b);
			std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
			glVertex3d(point.x / ratio, point.y / ratio, point.z / ratio);
			
			point = i.tPoint2;
			glColor3d(point.r, point.g, point.b);
			std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
			glVertex3d(point.x / ratio, point.y / ratio, point.z / ratio);

			point = i.tPoint3;
			glColor3d(point.r, point.g, point.b);
			std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
			glVertex3d(point.x / ratio, point.y / ratio, point.z / ratio);
			
			std::cout << "draw a triangle #" << counter << std::endl;
			counter += 1;
		}
		
	}
	glEnd();
	// glColor3f(1.0, 0.0, 1.0);
	// glutWireTeapot(0.4f);
	glutSwapBuffers();
}


int main(int argc, char** argv) {
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
		triangles = readTriangle(path);
	}
	else if (inputFlag == 2) {
		std::string path;
		std::cout << "Please provide the .tri file's path (relatively). \nOr, use '../../../resources/intersecting.tri' by default." << std::endl;

		std::cin >> path;
		
		if (path == "!") {
			path = "../../../resources/intersecting.tri";
		}
		triangles = readTriangle(path);
	}
	else if (inputFlag == 3) {

	}
	else {
		std::cout << "Gotta invalid flag. Return Code: -1." << std::endl;
		return -1;
	}

	if (inputFlag == 3) {
		/* Draw weaving triangles */
	}
	else {
		/* Draw triangles! */
		glutInit(&argc, argv);

		glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH);

		glutInitWindowSize(windowWidth, windowHeight);
		onWindowResized(windowWidth, windowHeight);
		glutCreateWindow("triAngels");

		glutReshapeFunc(onWindowResized);
		glutDisplayFunc(onRender);
		glutIdleFunc(onRender);

		// 启用阴影平滑
		glShadeModel(GL_SMOOTH);
		// 黑色背景
		glClearColor(0.0, 0.0, 0.0, 1.0f);
		// 设置深度缓存
		glClearDepth(1.0);
		// 启用深度测试
		glEnable(GL_DEPTH_TEST);
		// 所作深度测试的类型
		glDepthFunc(GL_LEQUAL);

		GLenum error = glewInit();
		if (error != GLEW_OK)
		{
			printf("glew init failure.");
			return 1;
		}

		glutMainLoop();

		return 0;
	}
	return 0;
}