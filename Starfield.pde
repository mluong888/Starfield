NormalParticle [] np;

void setup()
{
	background(0);//your code here
	size(300,300);
	np = new NormalParticle[20];
for (int i = 0; i<np.length; i++)
{
		np[i] = new NormalParticle();
		 //your code here
}
}
void draw()
{
	for (int i = 0; i<np.length; i++)
{
		
		 //your code here
	np[i].move();
	np[i].show();
}
	//your code here
}
class NormalParticle
{
	double X,Y,Speed,Angle;
	int Color;
	NormalParticle()
	{
		Speed = Math.random()*10;
		X = Math.random()*300;
		Y = Math.random()*300;
		Color = (255);
		Angle = Math.random()*2*Math.PI;
	}
void move()
{
	X = X + Math.cos(Angle)*Speed;
	Y = Y + Math.sin(Angle)*Speed;
	//your code here
}
void show()
{
	fill(Color);
	ellipse((float)X,(float)Y,10,10);
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

