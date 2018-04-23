#pragma once

#include <string>
#include <cstdlib>
#include <fstream>
#include <iostream>

#include "Dependencies\glew.h"
#define POINT_COUNT 1
#define bulletCount 10;
#define PI 3.141592

struct Transform
{
	float x;
	float y;
	float z;
	Transform operator+(Transform& param)
	{
		x += param.x;
		y += param.y;
		z += param.z;
		return *this;
	}
	Transform operator*(float param)
	{
		Transform temp;
		temp.x = x * param;
		temp.y = y * param;
		temp.z = z * param;
		return temp;
	}
};


class Bullet
{
public:
	float angle=0;
	float speed=0;
	float speedrate=0;
	float anglerate=0;
	Transform position = {0,0,0};
	Transform color = { 1,1,1 };
public:
	Bullet(float speed, float angle, float speedrate, float anglerate, Transform color = {1,1,1})
	{
		this->speed = speed;
		this->speedrate = speedrate;
		this->angle = angle;
		this->anglerate = anglerate;
		this->color = color;
	};
	void Move(float elapsedTime)
	{
		float rad = angle * PI * 2;
		position.x += speed * cosf(rad)*elapsedTime;
		position.y += speed * sinf(rad)*elapsedTime;
		

		angle += anglerate;
		speed += speedrate;
	}
	bool outRange()
	{
		return position.x > 2 || position.x<-2 || position.y>2 || position.y < -2;
	}
};





class Renderer
{
public:
	Renderer(int windowSizeX, int windowSizeY);
	~Renderer();

	bool IsInitialized();
	void ProcessInput(float x, float y);
<<<<<<< HEAD
	void FragmentSpline(float* center, float time);
	void FillAll(float r, float g, float b,float a);
=======
	void FragmentSpline(float time);
>>>>>>> d105241d9854bc83512fb90f3c2359f5803f2d01

private:
	void Initialize(int windowSizeX, int windowSizeY);
	bool ReadFile(char* filename, std::string *target);
	void AddShader(GLuint ShaderProgram, const char* pShaderText, GLenum ShaderType);
	GLuint CompileShaders(char* filenameVS, char* filenameFS);
	void CreateBufferObjects();
	

	bool m_Initialized = false;
	
	unsigned int m_WindowSizeX = 0;
	unsigned int m_WindowSizeY = 0;

	float m_mouseX=0, m_mouseY=0;

	GLuint m_VBO = 0;
	GLuint m_SolidRectShader = 0;
<<<<<<< HEAD
	GLuint m_FillAllShader = 0;
=======


	Transform points[POINT_COUNT]	=	{{ 0,0,1 }};
	vector<Bullet*> bullets;
>>>>>>> d105241d9854bc83512fb90f3c2359f5803f2d01
};

