Spaceship s = new Spaceship();
//your variable declarations here
public void setup() 
{
  background(0);
  size(400, 400);
  for(int i = 0; i < Background.length; i++)
  {
    Background[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < Background.length; i++)
  {
    Background[i].show();
  }
  s.show();
  s.move();
}
public void keyPressed()
{
  if(key == 'a') // turn left
  {
    s.turn(-5);
  }
  if(key == 'd') // turn right
  {
    s.turn(5);
  }
  if(key == 'w') // accelerate
  {
    s.accelerate(0.1);
  }
  if(key == 's') // accelerate 
  {
    s.accelerate(-0.1);
  }
  if(key == 'h')
  {
    s.setX((int)(Math.random()*300));
    s.setY((int)(Math.random()*300));
    s.setDirectionX(0);
    s.setDirectionY(0);
  } 
}
