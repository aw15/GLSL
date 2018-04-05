#version 330

in vec4 a_Position;


uniform float u_time;



void main()
{
	float xValue = a_Position.x;
	float yValue = sin(a_Position.x * 3.1415*1+u_time) *(a_Position.x+1)/2;

	gl_Position = a_Position;
	gl_Position.y = yValue;

	//gl_Position.y = sin(gl_Position.x * 3.1415*1+u_time) *(gl_Position.x+1)/2;
	//gl_Position.y = sin(gl_Position.x * 3.1415*3+u_time) *(1-(gl_Position.x+1)/2);
}
