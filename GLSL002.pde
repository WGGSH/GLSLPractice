class GLSL002 extends GLSL{
	private PShader shader;

	GLSL002(){

	}

	void setup(){
		background(0);

		this.shader=loadShader("shader002.glsl");
	}
	
	void draw(){
		background(0);
		this.shader.set("r",float(width),float(height));
		this.shader.set("t",float(frameCount));

		shader(this.shader);
		fill(255);
		rect(0,0,width,height);
	}
}
