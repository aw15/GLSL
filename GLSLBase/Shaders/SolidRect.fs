#version 330

layout(location=0) out vec4 FragColor;

in float v_Value;
uniform float u_Change;

void main()
{
	
	float standard = (1.0 + u_Change)/2.0;

	if(v_Value>standard-0.1 && v_Value<standard+0.1)
	{
		FragColor = vec4(1.0,1.0,1.0,1.0);
	}
	else
	{
		FragColor = vec4(0.0,0.0,0.0,1.0);
	}


	
	

}
