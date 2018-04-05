#version 330

in vec4 a_Position;


uniform float u_time;



void main()
{
	float xValue = -10;
	float yValue = -10;
	
	if(u_time+1>a_Position.x)
	{
		float newTime = u_time +1 - a_Position.x;
		//newTime = fract(newTime/2)*2;
		xValue = newTime-1;
		yValue = sin(newTime*3.1415*a_Position.y)*a_Position.z*0.3;
	}

	gl_Position = a_Position;
	gl_Position.x = xValue;
	gl_Position.y = yValue;

	//gl_Position.y = sin(gl_Position.x * 3.1415*1+u_time) *(gl_Position.x+1)/2;
	//gl_Position.y = sin(gl_Position.x * 3.1415*3+u_time) *(1-(gl_Position.x+1)/2);
}
