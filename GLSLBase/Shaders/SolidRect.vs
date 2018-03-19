#version 330

in vec4 a_Position;

out vec4 v_Color;


void main()
{
	//gl_Position = vec4(a_Position, 1);
	gl_Position = a_Position * vec4(0.5,0.5,0.5,1);

	v_Color = a_Position;
}
