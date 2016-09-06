int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
PImage corgi;

void setup() {
	size(300,300);
	strokeWeight(5);
	background(5);
	corgi = loadImage("corgi.jpg");
}

int red = (int)(Math.random()*255);
int green = (int)(Math.random()*255);
int blue = (int)(Math.random()*255);

void draw() {
	//image(corgi.jpg);
	image(corgi,0,0,300,300);
	stroke(red, green, blue);
	while(endX<width) {
		endX = startX + (int)(Math.random()*9);
		endY = startY + (int)(Math.random()*18-9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
		
	}
}

void mousePressed() {
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;

	

}