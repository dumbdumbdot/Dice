int rollsum;
void setup()
{
  size(700, 500);
  noLoop();
}
void draw()
{
  background(168, 131, 141);
  fill(247, 230, 234);
  rect(490, 120, 200, 250, 10);
  rollsum = 0;
  for (int y = 10; y <= 480; y = y + 60)
  {
    for (int x = 10; x <= 480; x = x + 60)
    {
      Die sam = new Die(x, y);
      sam.show();
      rollsum = rollsum + sam.a;
    }
  }
  textSize(50);
  text(rollsum, 540, 270);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, a;


  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    a = (int)((Math.random()*6)+1);
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 7);

    if (a == 1)
    {
      fill(175, 24, 64);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (a == 2)
    {
      fill(107, 14, 39);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    } else if (a == 3)
    {
      fill(255, 68, 118);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    } else if (a == 4)
    {
      fill(198, 87, 117);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
    } else if (a==5)
    {
      fill(68, 0, 18);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (a==6)
    {
      fill(237, 142, 167);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
    }
  }
}