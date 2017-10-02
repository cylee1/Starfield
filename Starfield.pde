NormalParticle [] squares;
void setup()
{
	size(300,250);
	squares = new NormalParticle[100];
	for(int i = 0; i < squares.length; i++)
	{
		squares[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	for(int i = 0; i < squares.length; i++)
	{
		squares[i].show();
		squares[i].move();
	}
}
class NormalParticle
{
	double dX, dY, dAngle, dColor, dSpeed;
	//int dSpeed;
	NormalParticle()
	{
		dX = 150;
		dY = 125;
		dSpeed = (int)(Math.random()*100)-10;
		dAngle = (Math.cos(2.03)*1);
	}
	void move()
	{
		//dX = dX + dSpeed * (Math.random()*Math.cos(2.03)*1);
		dY = dX + dSpeed * (Math.random()*Math.sin(2.03)*1);
		dX = dX + dSpeed * dAngle;
	}
	void show()
	{
		fill(255);
		noStroke();
		rect((float)dX,(float)dY,4,4);
	}
}
interface Particle
{
//	public void show();
//	public void move();
}
class OddballParticle //uses interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

