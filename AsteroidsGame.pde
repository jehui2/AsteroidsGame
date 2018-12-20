Spaceship s = new Spaceship();
ArrayList <Asteroid> Meteor = new ArrayList <Asteroid>();
ArrayList <Bullet> Pellet = new ArrayList <Bullet>();
//your variable declarations here
public void setup() 
{
  background(0);
  size(400, 400);
  for(int i = 0; i < Background.length; i++)
  {
    Background[i] = new Star();
  }
  for(int i = 0; i < 10; i++)
  {
    Meteor.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < Background.length; i++)
  {
    Background[i].show();
  }
  for(int i = 0; i < Meteor.size(); i++)
  {
    Meteor.get(i).show();
    Meteor.get(i).move();
  }
  s.show();
  s.move();
  for(int i = 0; i < Meteor.size(); i++)
  {
    if(dist(s.getX(),s.getY(),Meteor.get(i).getX(),Meteor.get(i).getY())<10)
    Meteor.remove(i);
  }
  for(int i = 0; i < Meteor.size(); i++)
  {
    for(int ii = 0; ii < Pellet.size(); ii++)
    {
      if(dist(Meteor.get(i).getX(),Meteor.get(i).getY(),Pellet.get(ii).getX(),Pellet.get(ii).getY())<10)
      {
        Pellet.remove(ii);
        Meteor.remove(i);
        break;
      }
    }
  }
  for(int i = 0; i < Pellet.size(); i++)
  {
    Pellet.get(i).show();
    Pellet.get(i).move();
  }
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
  if(key == ' ') // bullet
  {
    Pellet.add(new Bullet(s));
  }
}
