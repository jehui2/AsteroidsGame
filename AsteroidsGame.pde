Spaceship s = new Spaceship();
Asteroid[] Meteor = new Asteroid[10];
//your variable declarations here
public void setup() 
{
  background(0);
  size(400, 400);
  for(int i = 0; i < Background.length; i++)
  {
    Background[i] = new Star();
  }
  for(int i = 0; i < Meteor.length; i++)
  {
    Meteor[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < Background.length; i++)
  {
    Background[i].show();
  }
  for(int i = 0; i < Meteor.length; i++)
  {
    Meteor[i].show();
    Meteor[i].move();
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
