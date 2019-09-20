#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <vector>
#include <algorithm>
#include <GL/glew.h>
#include <GL/freeglut.h>

using namespace std;

static int windowWidth = 1280, windowHeight = 720;

static GLfloat teapotRed = 0.5f;
static GLfloat teapotGreen = 0.5f;
static GLfloat teapotBlue = 0.7f;

static GLfloat bgRed = 0.7f;
static GLfloat bgGreen = 0.7f;
static GLfloat bgBlue = 1.0f;

static void onWindowResized(int w, int h)
{
	windowWidth = w, windowHeight = h;
}

static void onRender()
{
	glClear(GL_COLOR_BUFFER_BIT);
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

	glClearColor(bgRed, bgGreen, bgBlue, 0.0f);              // background color
	glClear(GL_COLOR_BUFFER_BIT);                        // clear background with background color

	GLenum error = glewInit();
	if (error != GLEW_OK)
	{
		printf("glew init failure.");
		return 1;
	}

	glutMainLoop();

	return 0;
}