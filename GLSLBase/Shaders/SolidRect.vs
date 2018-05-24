#version 330

in vec3 a_Position;

uniform float u_time;

out vec2 position;

void main()
{
	vec2 pos = a_Position.xy;
	pos.y = pos.y+0.5* sin((pos.x+0.5)*2*3.141592+u_time);

	position = a_Position.xy+vec2(0.5,0.5);

	gl_Position = vec4(pos,1,1);
	
}