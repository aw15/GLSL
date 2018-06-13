#version 330

in vec3 a_Position;
in vec3 a_Normal;
in vec4 a_Color;
uniform mat4 u_ProjView;
uniform mat4 u_rotation;
uniform mat4 u_model;

out vec4 v_color;
out vec3 v_normal;
out vec3 v_pos;

void main()
{
  gl_Position = u_ProjView*  u_model * vec4(a_Position, 1.f);

  v_pos = (u_model * vec4(a_Position, 1.0f)).xyz;
  v_normal = (u_model * vec4(a_Normal, 0.0f)).xyz;
  v_color = a_Color;
}



