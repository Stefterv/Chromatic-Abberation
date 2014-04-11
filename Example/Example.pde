/*
Chromatic Aberration by Stef Tervelde
Example
*/
// Define the shader
PShader blur;

void setup(){
	size(770, 450,P2D);
	background(0);
	// Load the shader
	blur = loadShader("chromatticaberration.glsl");
	// always set the blursize, otherwise you won't see anything: 2 is default, but every other integer is possible
 	blur.set("blurSize",15);
}

void draw(){
	background(0);
	noStroke();
	fill(255);
	ellipse(mouseX,mouseY,150,150);

	// Apply the shader
	filter(blur);
}