precision mediump float;
uniform float t; // time
uniform vec2 r;  // resolution
uniform vec2 mouse; 
float PI=3.141592653; 
float PI2=PI*2;


void main(){
	vec2 p = (gl_FragCoord.xy * 2.0 - r) / min(r.x, r.y); // 正規化
	for(int i=0;i<5;i++){
		vec2 c=p+vec2(0.3*cos(PI2/5*i+PI/180*t*t/100),0.3*sin(PI2/5*i+PI/180*t*t/100));
		
		vec2 pm= (mouse.xy*2.0-r)/min(r.x,r.y);
		pm.y=pm.y*-1.0;
		float l = 1.0+sin(PI/180*t/4)-0.1 / length(pm-c);
		gl_FragColor += vec4(vec3(l), 1.0);
	}
}

