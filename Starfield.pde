//your code here
Particle[] arr; 
Boolean reset;
void setup()
{
	size(600,600);
	background(0);
	arr = new Particle[1000];
	for(int i = 0 ; i < arr.length; i++){
		arr[i] = new Particle();
	}
	arr[0] = new OddballParticle();
}
void draw()
{
	background(0);
	for(int i = 0 ; i < arr.length; i++){
		arr[i].move();
		arr[i].show();
	}
}
class Particle
{
	double myX,myY,speed,angle;
	int myColor;
	Particle(){
		myX = 300;
		myY = 300;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		angle = (Math.random()*Math.PI*2);
		speed = (Math.random()*4)+1;
	}

	void move(){
		myX += Math.cos(angle)*speed;
		myY += Math.sin(angle)*speed;
		if(myX > 600 || myX < 0){
			myX = 300;
			myY = 300;
			angle = (Math.random()*Math.PI*2);
		}
		if(myY > 600 || myY < 0){
			myX = 300;
			myY = 300;
			angle = (Math.random()*Math.PI*2);
		}
	}

	void show(){
		fill(myColor);
		ellipse((float)myX, (float)myY, 5, 5);
	}

	void reset(){
		myX = 300;
		myY = 300;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		angle = (Math.random()*Math.PI*2);
		speed = (Math.random()*4)+1;
	}
}

class OddballParticle extends Particle//inherits from Particle
{
	//your code here
	OddballParticle(){
		// myX = 300;
		// myY = 300;
	}

	void move(){
		// myX ++;
		// myY = Math.sqrt((20*20) - (myX*myX));
		myX += Math.cos(angle)*speed;
		myY += Math.sin(angle)*speed;
		if(myX > 600 || myX < 0){
			myX = 300;
			myY = 300;
			angle = (Math.random()*Math.PI*2);
		}
		if(myY > 600 || myY < 0){
			myX = 300;
			myY = 300;
			angle = (Math.random()*Math.PI*2);
		}
	}

	void show(){
		fill(myColor);
		ellipse((float)myX, (float)myY, 100, 100);
	}

	void reset(){
		myX = 300;
		myY = 300;
	}
}
void mousePressed(){
	background(0);
	for(int i = 1 ; i < arr.length; i++){
		arr[i].reset();
	}
}