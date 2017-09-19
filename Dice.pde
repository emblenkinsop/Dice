int rollTotal;

void setup()
{
  size(900,650);
  stroke(255);
  textSize(30);
}
void draw()
{
  background(50 + (int)(Math.random()*51), 50 + (int)(Math.random()*51), 50 + (int)(Math.random()*51));
  for (int j = 1; j <= 11; j++) {
    for (int i = 1; i <= 17; i++) {
      Die one = new Die(50*i-25,50*j-25);
      one.roll();
      one.show();
    }
  }
  fill(0);
  text(rollTotal+" pips", 380, 625);
  noLoop();
}
void mousePressed()
{
  rollTotal  = 0;
  redraw();
}
class Die //models one single dice cube
{
  int myX,myY,myRoll;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    myRoll = (int)(Math.random()*6+1);
    rollTotal = rollTotal + myRoll;
  }
  void show()
  {
    fill((int)(Math.random()*251), (int)(Math.random()*251), (int)(Math.random()*251));
    rect(myX,myY,50,50,10);
    
    fill((int)(Math.random()*251), (int)(Math.random()*251), (int)(Math.random()*251));
    if (myRoll%2 == 1) {
      ellipse(myX+25, myY+25, 5, 5);
    }
    if (myRoll > 1) {
      ellipse(myX+13, myY+13, 5, 5);
      ellipse(myX+37, myY+37, 5, 5);
    }
    if (myRoll > 3) {
      ellipse(myX+13, myY+37, 5, 5);
      ellipse(myX+37, myY+13, 5, 5);
    }
    if (myRoll == 6) {
      ellipse(myX+25, myY+13, 5, 5);
      ellipse(myX+25, myY+37, 5, 5);
    }
  }
}