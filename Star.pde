Star[] Background = new Star[400];
class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  Star()
  {
    myX = ((int)(Math.random()*400));
    myY = ((int)(Math.random()*400));
  }
  void show()
  {
    noStroke();
    fill(255);
    ellipse(myX, myY, 2, 2);
  }
}
