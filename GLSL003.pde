class GLSL003 extends GLSL{
	private PShader shader;

	GLSL003(){

	}

	void setup(){
		background(0);

		this.shader=loadShader("shader003.glsl");
	}
	
	void draw(){
		background(0);
		this.shader.set("r",float(width),float(height));
		this.shader.set("mouse",float(mouseX),float(mouseY));
		this.shader.set("t",float(frameCount));

		shader(this.shader);
		fill(255);
		rect(0,0,width,height);
	}
}
