Jumper bob = new Jumper();
Walker sam = new Walker();
void setup()
{
  size(500, 500);
}
void draw()
{
  background(0);
  bob.show();
  bob.jump();
  sam.show();
  sam.walk();
}
class Jumper
{
  int myX, myY;
  Jumper()
  {
    myX = 250;
    myY = 250;
  }
  void jump()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  void show()
  {
    fill(0, 0, 255);
    ellipse(myX, myY, 50,50);
  }
}
class Walker
{
  int myX, myY;
  Walker()
  {
    myX = 250;
    myY = 250;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show()
  {
    fill(0, 255, 0);
    ellipse(myX, myY, 50,50);
  }
}