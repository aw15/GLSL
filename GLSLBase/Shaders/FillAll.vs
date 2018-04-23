#version 330

in vec4 a_Position;
out vec2 v_Pos;

void main()
{
	v_Pos = a_Position.xy;
	gl_Position = a_Position;
}
