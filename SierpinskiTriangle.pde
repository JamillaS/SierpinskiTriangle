public void setup()
{
	size(400, 400);
}
public void draw()
{
	sierpinski(0, 400, 400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len >= 20)
	{
		triangle(x, y, len, y, len/2, (y-len)/2);
		sierpinski(x, y/2, len/2);
		triangle(x, 2 * y, len, y, len/2, len/2);
		//sierpinski(x, y/4, len/4);
		//triangle(x, y, len, y, len/2, y-len);
	}
	else
	{
	    //sierpinski(x, y/2, len/2);
	    triangle(x, y, len, y, len/2, y-len);
	}
	
	
}