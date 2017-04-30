class GLSL005 extends GLSL{
	private PShader shader;
	private PGraphics pg;

	GLSL005(){

	}

	void setup(){
		background(0);

		this.shader=loadShader("shader005.glsl");
		this.pg=createGraphics(500,500,P2D);

	}
	
	void draw(){
		//hint(DISABLE_DEPTH_TEST);
		hint(ENABLE_DEPTH_SORT);
		hint(DISABLE_DEPTH_TEST);

		background(0);
		this.shader.set("r",float(pg.width),float(pg.height));
		this.shader.set("mouse",float(mouseX),float(mouseY));
		this.shader.set("t",float(frameCount)/60);

		pg.beginDraw();
		pg.shader(this.shader);
		pg.rect(0, 0, width, height);
		pg.endDraw();

		blendMode(ADD);
		final float SIZE=200;
		translate(width/2,height/2);
		rotateX(PI/180*frameCount/4);
		rotateY(PI/180*frameCount*2/4);
		for(int j=0;j<3;j++){
			rotateY(PI*2/3);
			pushMatrix();
		for(int i=0;i<3;i++){
			rotateX(PI*2/3);

		noStroke();

		beginShape();
		texture(pg);
		vertex(-SIZE,-SIZE,-SIZE,0,0);
		vertex(SIZE,-SIZE,-SIZE,pg.width,0);
		vertex(SIZE,SIZE,-SIZE,pg.width,pg.height);
		vertex(-SIZE,SIZE,-SIZE,0,pg.height);
		endShape(CLOSE);

		beginShape();
		texture(pg);
		vertex(-SIZE,-SIZE,SIZE,0,0);
		vertex(SIZE,-SIZE,SIZE,pg.width,0);
		vertex(SIZE,SIZE,SIZE,pg.width,pg.height);
		vertex(-SIZE,SIZE,SIZE,0,pg.height);
		endShape(CLOSE);

		beginShape();
		texture(pg);
		vertex(-SIZE,-SIZE,-SIZE,0,0);
		vertex(-SIZE,SIZE,-SIZE,pg.width,0);
		vertex(-SIZE,SIZE,SIZE,pg.width,pg.height);
		vertex(-SIZE,-SIZE,SIZE,0,pg.height);
		endShape(CLOSE);

		beginShape();
		texture(pg);
		vertex(SIZE,-SIZE,-SIZE,0,0);
		vertex(SIZE,SIZE,-SIZE,pg.width,0);
		vertex(SIZE,SIZE,SIZE,pg.width,pg.height);
		vertex(SIZE,-SIZE,SIZE,0,pg.height);
		endShape(CLOSE);

		beginShape();
		texture(pg);
		vertex(-SIZE,-SIZE,-SIZE,0,0);
		vertex(SIZE,-SIZE,-SIZE,pg.width,0);
		vertex(SIZE,-SIZE,SIZE,pg.width,pg.height);
		vertex(-SIZE,-SIZE,SIZE,0,pg.height);
		endShape(CLOSE);

		beginShape();
		texture(pg);
		vertex(-SIZE,SIZE,-SIZE,0,0);
		vertex(SIZE,SIZE,-SIZE,pg.width,0);
		vertex(SIZE,SIZE,SIZE,pg.width,pg.height);
		vertex(-SIZE,SIZE,SIZE,0,pg.height);
		endShape(CLOSE);
		}
		popMatrix();
		}

		//shader(this.shader);
		//fill(255);
		//rect(0,0,width,height);
	}
}
