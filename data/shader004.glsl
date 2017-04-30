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
    vec2 p = (gl_FragCoord.xy * 2.0 - r) / min(r.x, r.y);
    vec2 q = mod(p, 0.2) - 0.1;
    float s = 2;
    float c = 1;
    q *= mat2(c, s, -s, c);
    float v = 0.1 / abs(q.y) * abs(q.x);
    float r = v * abs(sin(t * 6.0) + 1.5);
    float g = v * abs(sin(t * 4.5) + 1.5);
    float b = v * abs(sin(t * 3.0) + 1.5);
   // gl_FragColor = vec4(r, g, b, 1.0);
	 gl_FragColor=vec4(HSVtoRGB(vec3(t,1,v)),1);
}

