NormalParticle [] np;

void setup()
{
	//your code here
	size(600,600);
	np = new NormalParticle[500];
for (int i = 0; i<np.length; i++)
{
		np[i] = new NormalParticle();
		 //your code here
}
}
void draw()
{
	background(0);
	for (int i = 0; i<np.length; i++)
{
		 //your code here
	np[i].move();
	np[i].show();
	if(np[i].X>700 || np[i].X < -100 || np[i].Y >700 || np[i].Y < -100)
	{
		np[i].X =(Math.random()*100)+250;
		np[i].Y = (Math.random()*100)+250;
	}
}
	//your code here
}
class NormalParticle implements Particle
{
	
	double X,Y,Speed,Angle;
	int ColorR,ColorG,ColorB;
	NormalParticle()
	{
		Speed = (Math.random()*5)+1;
		X = (Math.random()*100)+250;
		Y = (Math.random()*100)+250;
		ColorR = (int)(Math.random()*255);
		ColorG = (int)(Math.random()*255);
		ColorB = (int)(Math.random()*255);
		Angle = Math.random()*2*Math.PI;
	}
public void move()
{
	X = X + Math.cos(Angle)*Speed;
	Y = Y + Math.sin(Angle)*Speed;
	//your code here
}
public void show()
{
	fill(ColorR,ColorG,ColorB);
	noStroke();
	ellipse((float)X,(float)Y,5,5);
}
}
interface Particle
{
	public void show();
	public void move();
}

/*class OddBall implements Particle
{
	double I,J,Spedd, Degree;
	Oddball()
	{
		Spedd = (Math.random()*5)+1;
		I = (Math.random()*100)+250;
		J = (Math.random()*100)+250;
		
		Degree = Math.random()*2*Math.PI;
	}

public void move()
{
	X = X + Math.sin(Degree)*Spedd;
	Y = Y + Math.cos(Degree)*Spedd;
	//your code here
}
public void show()
{
	fill(255);
	noStroke();
	ellipse((float)x,(float)y,15,15);
}
}
class JumboParticle //uses inheritance
{
	//your code here
}*/

