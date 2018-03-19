#version 330

in vec4 a_Position;
in vec4 a_Color;

out vec4 v_Color;

uniform float u_Scale;

void main()
{
	//gl_Position = vec4(a_Position, 1);
	gl_Position = a_Position * vec4(u_Scale,u_Scale,u_Scale,1);

	v_Color = a_Color;
}
