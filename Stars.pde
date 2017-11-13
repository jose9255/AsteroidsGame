//note that this class does NOT extend Floater
  //your code here
  class Star

{
  private int starX, starY; 
  private double starSize;
  public Star()
  {
    starX = (int)(Math.random()*800);
    starY = (int)(Math.random()*800);
    starSize = (Math.random()+2);
  }
  public void show()
  {
    noStroke();
    fill((float)(Math.random()*60),(float)(Math.random()*120),(float)(Math.random()*130));
    ellipse((float)starX, (float)starY, (float)starSize, (float)starSize);
  }
}

