class Asteroid extends Floater
{
  private int rotSpeed = ((int)(Math.random()*8)-4);
  
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int) myCenterX;}
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int) myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return (double) myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return (double) myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return (int) myPointDirection;}
  
  public void setup()
  {
  
  }
  public Asteroid()
  {
   corners = 8;
   xCorners = new int [corners];
   yCorners = new int [corners];
   myColor = 255;
   xCorners[0] = 2;
   yCorners[0] = 2;
   xCorners[1] = 8;
   yCorners[1] = 0;
   xCorners[2] = 2;
   yCorners[2] = -2;
   xCorners[3] = 0;
   yCorners[3] = -8;
   yCorners[4] = -2;
   xCorners[4] = -2;
   xCorners[5] = -8;
   yCorners[5] = 0;
   xCorners[6] = -2;
   yCorners[6] = 2;
   xCorners[7] = 0;
   yCorners[7] = 8;  
   myCenterX=((int)(Math.random()*400));
   myCenterY=((int)(Math.random()*400));
   myDirectionX=((Math.random()*2)-1);
   myDirectionY=((Math.random()*2)-1);
  }
   public void move()
  {
    turn(rotSpeed);
    super.move();
  }
}
