class Spaceship extends Floater  
{   
  public Spaceship() 
  {
  corners = 4;
  int [] xS= {16,-8,-4,-8};
  int [] yS= {0,-8,0,8};
  xCorners = xS;
  yCorners = yS;
  myColor = color(188,0,0);
  myCenterX=midX;
  myCenterY=midY; //holds center coordinates   
  myDirectionX = 0;
  myDirectionY = 0;//holds x and y coordinates of the vector for direction of travel   
  myPointDirection = 0;
  } //holds current direction the ship is pointing in degrees    
  public void setX(int x){myCenterX=x;} 
  public int getX(){return (int)myCenterX;} 
  public void setY(int y){myCenterY=y;}  
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}  
  public double getPointDirection(){return myPointDirection;}
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);
    stroke(myColor); 
    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    noStroke();
    fill(120);

    if (key=='f') //has that cool fire blazin behind
    {
      noStroke();
      fill(255,140,0);
      ellipse(-21,0,5,5);
      triangle(-21,-4,-19,4,-28,0);
    }

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
    
  }  

} 
