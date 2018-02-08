PImage heart;
public void setup()
{
	size(500,500);
	noFill();
	background(0);
	stroke(255);
	heart = loadImage("heart.png");
}
public void draw()
{
	sierpinski(0,500,500);
	heart(50,450,30);
}
public void mouseDragged()//optional
{

}
public void heart(int x, int y, int siz)
{
	// fill(255);
	rotate(PI/2);
	rect(x, y, siz, siz);


}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 80)
	{
		// triangle(x,y,x+len,y,x+len/2,y-len);
		heart.resize(len/2,0);
		image(heart, x+10, y+4);

	}
	else 
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}