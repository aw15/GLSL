#pragma once

#include <string>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include"glm\gtc\matrix_transform.hpp"
#include"glm/glm.hpp"
#include"LoadPng.h"
#include "Dependencies\glew.h"
#define POINT_COUNT 6
#define PI 3.141592






class Renderer
{
public:
	Renderer(int windowSizeX, int windowSizeY);
	~Renderer();

	bool IsInitialized();
	void ProcessInput(float x, float y);
	void FragmentSpline(float time);
	void FillAll(float r, float g, float b, float a);
private:
	void Initialize(int windowSizeX, int windowSizeY);
	bool ReadFile(char* filename, std::string *target);
	void AddShader(GLuint ShaderProgram, const char* pShaderText, GLenum ShaderType);
	GLuint CompileShaders(char* filenameVS, char* filenameFS);
	void CreateBufferObjects();
	void MakeTexture(unsigned char * data, GLuint& texture, int x, int y);
	GLuint CreatePngTexture(char * filePath);
	bool m_Initialized = false;
	
	unsigned int m_WindowSizeX = 0;
	unsigned int m_WindowSizeY = 0;

	float m_mouseX=0, m_mouseY=0;

	GLuint m_VBO = 0;
	GLuint m_SolidRectShader = 0;
	GLuint m_FillAllShader = 0;
	GLuint m_VBOPosTex = 0;
	GLuint m_FillAll=0;

	GLuint gTextureIDTotal =0;
	GLuint brickTexture=0;
	GLuint skyTexture = 0;
	GLuint particleTexture = 0;

	glm::vec3 m_v3Camera_Position;
	glm::vec3 m_v3Camera_Lookat;
	glm::vec3 m_v3Camera_Up;

	glm::mat4 m_m4OrthoProj;
	glm::mat4 m_m4View;
	glm::mat4 m_m4ProjView;
	glm::mat4 m_m4WorldMatrix;
};

