#version 330

in vec3 a_Position;
in vec3 a_Normal;
in vec4 a_Color;
uniform float u_time;
uniform mat4 u_ProjView;
out vec4 v_Color;

void main()
{
  gl_Position = u_ProjView * vec4(a_Position, 1.f);
  v_Color = a_Color;
}



