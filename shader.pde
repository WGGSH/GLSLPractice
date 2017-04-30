import peasy.*;
PeasyCam cam;

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
	glsl=new GLSL005();
	glsl.setup();


	/*cam = new PeasyCam(this, 100);
	cam.setMinimumDistance(50);
	cam.setMaximumDistance(500);*/
}

void draw(){
	glsl.draw();
}

// マウスクリック時にデスクトップにスクリーンショットを撮影する
void mousePressed(){
	String path  = System.getProperty("user.home") + "/Desktop/Screen.png";
	save(path);
}
