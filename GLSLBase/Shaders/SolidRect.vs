#version 330

<<<<<<< HEAD
in vec4 a_Position;
out vec2 v_Pos;
=======
in vec3 a_Position;
out vec2 v_Position;
>>>>>>> d105241d9854bc83512fb90f3c2359f5803f2d01

uniform vec3 worldPosition;

void main()
{
<<<<<<< HEAD
	v_Pos = a_Position.xy;
	gl_Position = a_Position;
=======
	
	

	gl_Position = vec4(a_Position,1);
	gl_Position += vec4(worldPosition,1);

>>>>>>> d105241d9854bc83512fb90f3c2359f5803f2d01

}
