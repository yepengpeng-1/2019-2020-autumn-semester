// GraveRobber.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

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
#include "utilities.h"
// #include "Triangle/Triangle.hpp"
#include "PlyLoader/tinyply.h"
#include "PlyReaderWrapped.hpp"
// #include "ObjLoader/tiny_obj_loader.h"

using namespace tinyply;

// initialize with the test scene
SceneIndex scene = TEST_SCENE;
std::vector<triangle> fragments;

// window frame issues
static int windowWidth = 768, windowHeight = 768;

static void onWindowResized(int w, int h) {
	windowWidth = w, windowHeight = h;
	glViewport(0, 0, w, h);

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
}

// rotation issues
static GLfloat rotationX = 0.0f;
static GLfloat rotationY = 0.0f;
static GLfloat rotationZ = 0.0f;

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

// random generator issues
bool init = true;

static int random_int() {
	if (init) {
		srand(unsigned(time(0)));
		init = false;
	}
	return rand();
}

static double random_float() {
	if (init) {
		srand(time(0));
		init = false;
	}
	return double(rand()) / RAND_MAX;
}

static void giveRandomBrush() {
	glColor3d(random_float(), random_float(), random_float());
}

// render callback function issues
static void onRender() {
	// do some rendering stuff
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	switch (scene) {
	case TEST_SCENE:
	{
		glLoadIdentity();
		glRotatef(rotationX, 1.0, 0.0, 0.0);
		glRotatef(rotationY, 0.0, 1.0, 0.0);
		glRotatef(rotationZ, 0.0, 0.0, 1.0);
		updateRotation();

		glBegin(GL_TRIANGLES);

		giveRandomBrush();
		// int counter = 1;
		for (const auto& i : fragments) {
			
			auto point = i.a;
			// glColor3d(point.r, point.g, point.b);
			// std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
			glVertex3d(point.x, point.y, point.z);

			point = i.b;
			// glColor3d(point.r, point.g, point.b);
			// std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
			glVertex3d(point.x, point.y, point.z);

			point = i.c;
			// glColor3d(point.r, point.g, point.b);
			// std::cout << "Red: " << point.r << "\nGreen: " << point.g << "\nBlue: " << point.b << std::endl;
			glVertex3d(point.x, point.y, point.z);

			// std::cout << "draw a triangle #" << counter << std::endl;
			// counter += 1;
		}
		glEnd();
	}
		break;
	case BOOKTITLE_SCENE:
		break;
	case DARKROOM_SCENE:
		break;
	case STONEHEAP_SCENE:
		break;
	case BOMB_SCENE:
		break;
	case BUDDHA_SCENE:
		break;
	}

	glutSwapBuffers();
}

int main(int argc, char** argv)
{
    std::cout << "Assignment #4 initializing\n";

	// fragments = read_ply_file("./happy_recon/happy_vrip_res4.ply");
	fragments = read_ply_file("./models/book.ply", 0.1f);

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
