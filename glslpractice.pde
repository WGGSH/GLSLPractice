GLSL glsl;

class GLSL{
	GLSL(){
		this.setup();
	}
	void setup(){
	}
	
	void draw(){
	}
}

void setup(){
	size(displayWidth,displayHeight,P3D);
	glsl=new GLSL001();
	glsl.setup();
}

void draw(){
	glsl.draw();
}
