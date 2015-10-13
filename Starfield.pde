Particle [] np;

void setup()
{
	//your code here
	size(600,600);
	np = new Particle[500];
for (int i = 0; i<np.length; i++)
{
		np[i] = new NormalParticle();
		 //your code here
}
	np[1] = new OddballParticle();
	np[2] = new JumboParticle();
}
void draw()
{
	background(0);
	for (int i = 0; i<np.length; i++)
{
		 //your code here
	np[i].move();
	np[i].show();
	
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
	if(X>700 || X < -100 || Y >700 || Y < -100)
	{
		X =(Math.random()*100)+250;
		Y = (Math.random()*100)+250;
	}
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

class OddballParticle implements Particle
{
	double X,Y,Speed,Angle;
	int ColorR,ColorG,ColorB;
	OddballParticle()
	{
		Speed = (Math.random()*2)+1;
		X = (Math.random()*100)+250;
		Y = (Math.random()*100)+250;
		ColorR = (int)(Math.random()*255);
		ColorG = (int)(Math.random()*255);
		ColorB = (int)(Math.random()*255);
		Angle = Math.random()*2*Math.PI;
	}
public void move()
{
	X = X +(Math.random()*20)-10;
	Y = Y +(Math.random()*20)-10;
	if(X>700 || X < -100 ||Y >700 || Y < -100)
	{
		X =(Math.random()*100)+250;
		Y = (Math.random()*100)+250;
	}
	//your code here
}
public void show()
{
	fill(255);
	noStroke();
	ellipse((float)X,(float)Y,50,50);
}
}
class JumboParticle extends NormalParticle//uses inheritance
{
public void show()
	{
	ellipse((float)X,(float)Y,100,100);
	}
	//your code here
}

