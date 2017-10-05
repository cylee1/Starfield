Particle [] particles;
void setup()
{
	size(300,250);
	particles = new Particle[200];
	for(int i = 0; i < particles.length; i++)
	{
		particles[i] = new NormalParticle();
	}
	particles[0] = new OddballParticle();
	frameRate(50);
}

void draw()
{
	background(224,255,255);
	for(int i = 0; i < particles.length; i++)
	{
		particles[i].show();
		particles[i].move();
	}
}

interface Particle
{
	public void move();
	public void show();
}

class NormalParticle implements Particle
{
	double dX, dY, dAngle;
	int dSpeed;
	NormalParticle()
	{
		dX = 150;
		dY = 125;
		dSpeed = (int)(Math.random()*3)+1;
		dAngle = Math.PI*2*Math.random();
	}
	public void move()
	{
		dX = dX + dSpeed * (Math.random()*Math.sin(dAngle));
		dY = dY + dSpeed * (Math.random()*Math.cos(dAngle));
	}
	public void show()
	{
		//fill((float)(Math.random()*100)+1, (float)(Math.random()*205)+50, (float)(Math.random()*55)+200);
		fill((float)(Math.random()*255)+1, (float)(Math.random()*55)+200, 255, (float)(Math.random()*20)+150);
		noStroke();
		rect((float)dX,(float)dY,3,3);
	}
}

class OddballParticle implements Particle
{
	double sX, sY;
	OddballParticle()
	{
		sX = (Math.random()*150)+75;
		sY = (Math.random()*125)+75;
	}
	public void move()
	{
		sX = (Math.random()*300)+1;
		sY = (Math.random()*250)+1;
	}
	public void show()
	{
		fill(0,10,10,(float)(Math.random()*10)+200);
		noStroke();
		rect((float)sX,(float)sY,7,7);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}
