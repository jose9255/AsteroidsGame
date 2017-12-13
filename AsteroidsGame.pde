//your variable declarations here
public int midX = 400;
public int midY = 400; 
Spaceship flyer = new Spaceship();
Star[] nightSky = new Star[500];

ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();
public void setup() 
{
  //your code here
  size(800, 800);
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int i = 0; i<20; i++)
  {
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  //your code here
  background(0);

  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  for (int i = 0; i < asteroids.size(); i++) 
  {
    asteroids.get(i).show();
    asteroids.get(i).move();
    if (dist(flyer.getX(),flyer.getY(),asteroids.get(i).getX(), asteroids.get(i).getY() ) < 45)
    {
      asteroids.remove(i);

    }
  }
  flyer.show();
  flyer.move();
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

