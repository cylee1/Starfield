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
	double dX, dY, dAngle, dColor;
	int dSpeed;
	NormalParticle()
	{
		dX = 150;
		dY = 125;
	}
	void move()
	{
		dX = dX + (Math.cos(2.03)*1);
		dY = dY - (Math.sin(2.03)*1);
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
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

