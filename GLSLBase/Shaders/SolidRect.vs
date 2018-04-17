#version 330

in vec3 a_Position;
out vec2 v_Position;

uniform vec3 worldPosition;

void main()
{
	
	

	gl_Position = vec4(a_Position,1);
	gl_Position += vec4(worldPosition,1);


	v_Position = vec2(a_Position.x,a_Position.y);
}
