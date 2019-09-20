#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <vector>
#include <algorithm>
#include <GL/glew.h>
#include <GL/freeglut.h>
#include <ctime>

using namespace std;

static int windowWidth = 1280, windowHeight = 720;

static GLfloat teapotRed = 0.5f;
static GLfloat teapotGreen = 0.5f;
static GLfloat teapotBlue = 0.7f;

static GLfloat bgRed = 0.7f;
static GLfloat bgGreen = 0.7f;
static GLfloat bgBlue = 1.0f;

static GLfloat rotationX = 0.0f;
static GLfloat rotationY = 0.0f;
static GLfloat rotationZ = 0.0f;

static GLfloat speedX = 0.0f;
static GLfloat speedY = 0.0f;
static GLfloat speedZ = 0.0f;

static GLfloat const maxSpeedLimit = 3.5f;

static void onWindowResized(int w, int h)
{
	windowWidth = w, windowHeight = h;
}

static void updateRotation() {
	srand(time(NULL));
	double random_value = double(rand()) / RAND_MAX;
	speedX += random_value - 0.5;
	if (speedX > maxSpeedLimit) {
		speedX = maxSpeedLimit;
	}
	else if (speedX < -maxSpeedLimit) {
		speedX = -maxSpeedLimit;
	}

	random_value = double(rand()) / RAND_MAX;
	speedY += random_value - 0.5;
	if (speedY > maxSpeedLimit) {
		speedY = maxSpeedLimit;
	}
	else if (speedY < -maxSpeedLimit) {
		speedY = -maxSpeedLimit;
	}

	random_value = double(rand()) / RAND_MAX;
	speedZ += random_value - 0.5;
	if (speedZ > maxSpeedLimit) {
		speedZ = maxSpeedLimit;
	}
	else if (speedZ < -maxSpeedLimit) {
		speedZ = -maxSpeedLimit;
	}


	rotationX += speedX * 0.5;
	if (rotationX >= 360.0) {
		rotationX -= 360.0;
	}
	else if (rotationX < 0.0) {
		rotationX += 360.0;
	}

	rotationY += speedY * 0.5;
	if (rotationY >= 360.0) {
		rotationY -= 360.0;
	}
	else if (rotationY < 0.5) {
		rotationY += 360.0;
	}

	rotationZ += speedZ * 0.5;
	if (rotationZ >= 360.0) {
		rotationZ -= 360.0;
	}
	else if (rotationZ < 0.0) {
		rotationZ += 360.0;
	}
}

static void updateColor() {
	srand(time(NULL));
	double random_value = double(rand()) / RAND_MAX;
	if (rand() % 2) {
		random_value = -random_value;
	}
	int dice = rand() % 3;
	if (dice == 0) {
		// Ã¿´Î +- 0.01 ·¶Î§
		teapotRed += random_value / 100.0;
		teapotRed = std::max(std::min(teapotRed, 1.0f), 0.3f);
	}
	else if (dice == 1) {
		teapotGreen += random_value / 100.0;
		teapotGreen = std::max(std::min(teapotGreen, 1.0f), 0.3f);
	}
	else if (dice == 2) {
		teapotBlue += random_value / 100.0;
		teapotBlue = std::max(std::min(teapotBlue, 1.0f), 0.3f);
	}

	bgRed = std::min(pow(teapotRed, 2), 0.4f);
	bgGreen = std::min(pow(teapotGreen, 2), 0.4f);
	bgBlue = std::min(pow(teapotBlue, 2), 0.4f);
}

static void onRender()
{
	glClearColor(bgRed, bgGreen, bgBlue, 0.0f);
	glClear(GL_COLOR_BUFFER_BIT);

	glLoadIdentity();
	
	glRotatef(rotationX, 1.0, 0.0, 0.0);
	glRotatef(rotationY, 0.0, 1.0, 0.0);
	glRotatef(rotationZ, 0.0, 0.0, 1.0);

	updateRotation();
	updateColor();

	glColor3f(teapotRed, teapotGreen, teapotBlue);
	int teaPotSize = int(std::min(int(windowWidth * 9.0 / 16.0), windowHeight));
	glViewport((windowWidth - teaPotSize) / 2, (windowHeight - teaPotSize) / 2,
		teaPotSize, teaPotSize);
	glutWireTeapot(0.4f);

	glutSwapBuffers();
}



int main(int argc, char** argv)
{
	glutInit(&argc, argv);

	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH);

	glutInitWindowSize(windowWidth, windowHeight);
	glutCreateWindow("I'm a Teapot");

	glutReshapeFunc(onWindowResized);
	glutDisplayFunc(onRender);
	glutIdleFunc(onRender);

	glClearColor(bgRed, bgGreen, bgBlue, 0.0f);
	glClear(GL_COLOR_BUFFER_BIT);

	GLenum error = glewInit();
	if (error != GLEW_OK)
	{
		printf("glew init failure.");
		return 1;
	}

	glutMainLoop();

	return 0;
}