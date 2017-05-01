precision mediump float;
uniform float t; // time
uniform vec2 r;  // resolution
uniform vec2 mouse; 
const float PI=3.141592653; 
const float PI2=PI*2;

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
	float val=0.5;
	float alpha=1;
	/*if(abs(p.x)<0.6 && abs(p.y)<0.6){
		alpha=0;
	}else{
		if(abs(p.x)>abs(p.y)){
			val=(p.x*p.x-0.35)/0.36;
		}else{
			val=(p.y*p.y-0.35)/0.36;
		}
		alpha=1;
	}*/
	val=(0.003)/abs((1-abs(p.x))*(1-abs(p.y)))*((sin(t)+1.004)/2);
	//val+=(0.03)/(abs((p.x-1)*(p.y-1))*(sin(t)+1.04)/2);
	//if(val<0.1)val=0;
	//gl_FragColor=vec4(vec3((p.x+1)/2,(p.y+1)/2,1),1);
	gl_FragColor=vec4(HSVtoRGB(vec3(0.5+0.5*sin(t*5),0.8,val)),alpha);
}

