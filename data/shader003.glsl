precision mediump float;
uniform float t; // time
uniform vec2 r;  // resolution
uniform vec2 mouse; 
float PI=3.141592653; 
float PI2=PI*2;

vec3 Hue( float hue )
{
	vec3 rgb = fract(hue + vec3(0.0,2.0/3.0,1.0/3.0));

	rgb = abs(rgb*2.0-1.0);
		
	return clamp(rgb*3.0-1.0,0.0,1.0);
}

vec3 HSVtoRGB( vec3 hsv )
{
	return ((Hue(hsv.x)-1.0)*hsv.y+1.0) * hsv.z;
}

void main(){
	vec2 p = (gl_FragCoord.xy * 2.0 - r) / min(r.x, r.y); // 正規化
	vec2 pm = (mouse.xy * 2.0 - r) / min(r.x, -r.y); // 正規化
	pm.x=pm.x*-1;
	float f = (0.04*cos(PI/180*t)+0.06) / abs(length(p-pm) - 0.5+0.2*sin(PI/180*t));
	gl_FragColor=vec4(HSVtoRGB(vec3(atan(p.x-pm.x,p.y-pm.y)/PI2+PI/180*t,0.8,f)),1.0);
}

