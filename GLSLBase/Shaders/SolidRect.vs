#version 330

in vec4 a_Position;
out vec2 v_Position;

void main()
{
	gl_Position = a_Position;

	v_Position = vec2(a_Position.x,a_Position.y);
}
