public void setup()
{
	background(197);
	size(400, 400);
	noLoop();
}
public void draw()
{
	sierpinski(0, 400, 400);
}
public void mouseDragged()//optional
{
	if(mousePressed)
	fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
	
}
public void sierpinski(int x, int y, int len) 
{
	if(len >= 8)
	{
		fill((int)(Math.random() * 255),197,(int)(Math.random() * 255));
		

		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
		
	}
	else
	{	
		triangle(x, y, x + len, y, x + len/2, (y-len));
	    //sierpinski(x, y/2, len/2);
	    //triangle(x, y, x + len, y, x + len/2, (y-len));
	}
	
	
}