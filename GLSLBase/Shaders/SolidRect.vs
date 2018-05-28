#version 330

in vec3 Position;
in vec2 TexPos;
in vec4 Velocity;

uniform float uTime;

out vec2 vTexPos;
out float vAlpha;
const vec3 gravity = vec3(0, -0.4, 0);

void main()
{
	vec3 newPos = vec3(-100,-100,-100);
	float newTime = uTime - Velocity.w;
	float alpha = 1;
	if(newTime>0)
	{
		newTime = fract(newTime/2)*2;
		alpha = 1 - fract(newTime/2);
		newPos = Position.xyz + Velocity.xyx * newTime + 0.5*gravity*newTime*newTime;
		gl_Position = vec4(newPos.xyz, 1.0);
		vTexPos = TexPos;
	}
	vAlpha = alpha;

}
