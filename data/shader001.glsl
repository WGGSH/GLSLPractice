uniform vec2 window;


void main(){
	gl_FragColor=vec4(1,1.0/window.x*gl_FragCoord.x,1.0/window.y*gl_FragCoord.y,1.0);
	//gl_FragColor=vec4(0,0.8,0.5,0.7);
}

