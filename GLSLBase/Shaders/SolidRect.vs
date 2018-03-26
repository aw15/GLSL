#version 330

in vec4 a_Position;
in vec4 a_Color;



uniform float u_Change;
out vec2 v_Position;

void main()
{
	//gl_Position = vec4(a_Position, 1);
	

	gl_Position = a_Position;
	gl_Position.w = 1.0;
		

	v_Position = vec2(a_Position.x,a_Position.y);
	
}
