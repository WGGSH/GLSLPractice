class GLSL004 extends GLSL{
	private PShader shader;

	GLSL004(){

	}

	void setup(){
		background(0);

		this.shader=loadShader("shader004.glsl");
	}
	
	void draw(){
		background(0);
		this.shader.set("r",float(width),float(height));
		this.shader.set("mouse",float(mouseX),float(mouseY));
		this.shader.set("t",float(frameCount)/60);

		shader(this.shader);
		fill(255);
		rect(0,0,width,height);
	}
}
