//your variable declarations here
Spaceship flyer = new Spaceship();
Star[] nightSky = new Star[500];
public void setup() 
{
  //your code here
  size(800, 800);
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  flyer.show();
  flyer.move();
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}

public void keyPressed()
{
  if (key == 'l') //turn right
  {
    flyer.turn(7);
  }
  if (key == 'j') //turn left
  {
    flyer.turn(-7);
  }
  if (key == 'i') //go up
  {
    flyer.accelerate(1.2);
  }
  if (key == 'k') //go down
  {
    flyer.accelerate (-1.2);
  }
  if (key == ' ')
  {
    flyer.setDirectionX(0);
    flyer.setDirectionY(0);
    flyer.setX((int)(Math.random() *800));
    flyer.setY((int)(Math.random() *800));
  }
}


