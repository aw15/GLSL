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
	//vec2 current = origin + dir * u_time; -> 원점으로 방향으로 일정시간만큼 지난 위치
	//이걸 기준으로 위치를 계산

	if(u_time>a_Position.x)//0~2  사이 시작시간. -> u_time이 계속 증가함으로 필요가 없다.
	{

		float newTime = u_time - a_Position.x;//파티클이 발생해서 지난 시간
		newTime = fract(newTime/2);
		//2초를 2로 나눈다음 fract하면 2 넘어가는거에 소수점을 취해서 2를 곱하면 0~2사이로 왔다 갔다 하게 된다.
		// newTime = fract(newTime/2)*2 -> newTime이 1이라면 딱 엔드지점에 끝나지만 newTime이 2까지 증가해서 두배 길어진다.

		float temp = sin(newTime*3.1415*a_Position.y)*a_Position.z*0.3;

		newPos = origin+dir*newTime;
		float PI = 3.141592;
	mat2 rot = mat2(cos(PI/2),sin(PI/2),-sin(PI/2),cos(PI/2));
	//열행렬이므로
	vec2 verti = normalize(rot*dir);
	newPos +=verti * temp;
	}




	gl_Position.xy = newPos;
	gl_Position.z = 0;
	gl_Position.w = 1;
}