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
	//size(displayWidth,displayHeight,P3D);
	fullScreen(P3D);
	glsl=new GLSL003();
	glsl.setup();
}

void draw(){
	glsl.draw();
}

// マウスクリック時にデスクトップにスクリーンショットを撮影する
void mousePressed(){
	String path  = System.getProperty("user.home") + "/Desktop/Screen.png";
	save(path);
}
