#pragma once

#include <string>
#include <cstdlib>
#include <fstream>
#include <iostream>

#include "Dependencies\glew.h"

struct InputData
{
	float position[4];
	float color[4];
};

class Renderer
{
public:
	Renderer(int windowSizeX, int windowSizeY);
	~Renderer();

	bool IsInitialized();
	void Test();

	void Lecture3();

private:
	void Initialize(int windowSizeX, int windowSizeY);
	bool ReadFile(char* filename, std::string *target);
	void AddShader(GLuint ShaderProgram, const char* pShaderText, GLenum ShaderType);
	GLuint CompileShaders(char* filenameVS, char* filenameFS);
	void CreateVertexBufferObjects();
	void GetGLPosition(float x, float y, float *newX, float *newY);

	bool m_Initialized = false;
	
	unsigned int m_WindowSizeX = 0;
	unsigned int m_WindowSizeY = 0;

	GLuint m_positionBuffer = 0;
	GLuint m_colorBuffer = 0;
	GLuint m_SolidRectShader = 0;

};
