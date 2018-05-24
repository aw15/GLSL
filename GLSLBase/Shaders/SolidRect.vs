#version 330

in vec4 a_Position;


uniform float u_time;
uniform vec2 origin;
uniform vec2 end;


void main()
{
	gl_PointSize = 100;
	vec2 dir = end - origin;
	vec2 newPos = vec2(-10,10);
	//vec2 current = origin + dir * u_time; -> �������� �������� �����ð���ŭ ���� ��ġ
	//�̰� �������� ��ġ�� ���

	if(u_time>a_Position.x)//0~2  ���� ���۽ð�. -> u_time�� ��� ���������� �ʿ䰡 ����.
	{

		float newTime = u_time - a_Position.x;//��ƼŬ�� �߻��ؼ� ���� �ð�
		newTime = fract(newTime/2);
		//2�ʸ� 2�� �������� fract�ϸ� 2 �Ѿ�°ſ� �Ҽ����� ���ؼ� 2�� ���ϸ� 0~2���̷� �Դ� ���� �ϰ� �ȴ�.
		// newTime = fract(newTime/2)*2 -> newTime�� 1�̶�� �� ���������� �������� newTime�� 2���� �����ؼ� �ι� �������.

		float temp = sin(newTime*3.1415*a_Position.y)*a_Position.z*0.3;

		newPos = origin+dir*newTime;
		float PI = 3.141592;
	mat2 rot = mat2(cos(PI/2),sin(PI/2),-sin(PI/2),cos(PI/2));
	//������̹Ƿ�
	vec2 verti = normalize(rot*dir);
	newPos +=verti * temp;
	}




	gl_Position.xy = newPos;
	gl_Position.z = 0;
	gl_Position.w = 1;
}