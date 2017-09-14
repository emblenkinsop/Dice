void setup()
{
  size(400,400);
}
void draw()
{
  for (int j = 1; j <= 7; j++) {
    for (int i = 1; i <= 7; i++) {
      Die one = new Die(50*i-25,50*j-25);
      one.show();
    }
  }
  noLoop();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
  int myX,myY,mySize;
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
    mySize = 50;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
    rect(myX,myY,mySize,mySize,10);
	}
}