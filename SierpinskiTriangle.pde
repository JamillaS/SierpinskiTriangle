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
		triangle(x, y, x + len, y, x + len/2, y-len);
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		//triangle(len, y, len, len, len, len);
		sierpinski(x + len/4, y + len/2, len/2);
		//triangle(x, y, len, len, len * 2, len * 2);
	}
	else
	{
	    //sierpinski(x, y/2, len/2);
	    //triangle(x, y, len, y, len/2, y-len);
	}
	
	
}