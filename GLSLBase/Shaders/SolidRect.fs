#version 330

layout(location=0) out vec4 FragColor;

in vec2 v_Position;
uniform float u_Change;

void main()
{
		if(pow(v_Position.x,2)+pow(v_Position.y,2)<0.25)
		{
			FragColor = vec4(1.0,1.0,1.0,1.0);
		}
		else
		{
			FragColor = vec4(0.0,1.0,1.0,1.0);
		}
}
