#version 330

in vec3 a_Position;
in vec2 a_uv;
out vec2 v_uv;

uniform vec3 worldPosition;

void main()
{
	gl_Position = vec4(a_Position,1);
	v_uv = a_uv;
}
