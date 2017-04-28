class GLSL001 extends GLSL{
	private PShader shader;

	GLSL001(){

	}

	void setup(){
		background(0);

		this.shader=loadShader("shader001.glsl");
	}
	
	void draw(){
		background(0);
		this.shader.set("window",float(width),float(height));

		shader(this.shader);
		fill(255);
		rect(0,0,width,height);
	}
}
