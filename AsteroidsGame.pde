//your variable declarations here
Spaceship s1 = new Spaceship();
Star[] stars;
Asteroid[] rocks; 
public void setup() 
{
  //your code here
  size(700, 700);
  background(0);
rocks = new Asteroid[10];
  for(int i = 0; i < rocks.length; i++)
  {
    rocks[i] = new Asteroid((int)(Math.random()*700),(int)(Math.random()*700));
  }
stars = new Star[(int)(Math.random()*30 + 30)];
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star((int)(Math.random()*700),(int)(Math.random()*700));
  }
}
public void draw() 
{
  
  background(0);
  s1.move();
  s1.show();
  for(int i = 0; i < rocks.length; i++)
  {
    rocks[i].show();
    rocks[i].move();
  }
  for(int i = 0; i < stars.length; i ++)
  {  
    stars[i].show();  
  }

  //your code here
}
public void keyPressed()
{
  if( key == 'd'){s1.rotate(10);}
  if(key == 'a'){s1.rotate(-10);}
  if(key == 'w')
    {
      s1.rocket();
      s1.accelerate(.1);


    }
  if(key == ' ')
  {
    s1.setX((int)(Math.random()*700));
    s1.setY((int)(Math.random()*700));
    s1.setDirectionX(0);
    s1.setDirectionY(0);
    s1.setPointDirection((int)(Math.random()*360)); 
  }

}
public class Star
{
    int myX, myY;
    public Star(int x, int y)
    {
      myX = x;
      myY = y;
    }
    public void show()
    {
      ellipse(myX, myY, 2, 2);
      
    }
}
public class Bullet extends Floater
{
  public Bullet(Spaceship s1)
  {
    myColor = 255;
    corners = 4;
    myCenterX = s1.getX();
    myCenterX = s1.getY();
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -4;
    xCorners[1] = 8;
    yCorners[1] = -4;
    xCorners[2] = 8;
    yCorners[2] = 4;
    xCorners[3] = -8;
    yCorners[3] = 4;
    myPointDirection = 0;
    myDirectionX = 0;
    myDirectionY = 0;
  }
  public void setX(int x){ myCenterX = x;}
  public int getX(){ return (int) myCenterX;}
  public void setY(int y){ myCenterY = y;}
  public int getY(){ return (int) myCenterY;}
  public void setDirectionX(double x){ myDirectionX = x;}
  public double getDirectionX (){ return (double) myDirectionX; }
  public void setDirectionY(double y){ myDirectionY = y;}
  public double getDirectionY (){ return (double) myDirectionY; }
  public void setPointDirection( int degrees){ myPointDirection = degrees;}
  public double getPointDirection(){ return (int) myPointDirection; }
}
public class Spaceship extends Floater  
{   
    //your code here
  public Spaceship()
  {
    myColor = 255;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -6;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -6;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myCenterX = 350;
    myCenterY = 350;
    myPointDirection = 0;
    myDirectionX = 0;
    myDirectionY = 0;
  }
    
  public void setX(int x){ myCenterX = x;}
  public int getX(){ return (int) myCenterX;}
  public void setY(int y){ myCenterY = y;}
  public int getY(){ return (int) myCenterY;}
  public void setDirectionX(double x){ myDirectionX = x;}
  public double getDirectionX (){ return (double) myDirectionX; }
  public void setDirectionY(double y){ myDirectionY = y;}
  public double getDirectionY (){ return (double) myDirectionY; }
  public void setPointDirection( int degrees){ myPointDirection = degrees;}
  public double getPointDirection(){ return (int) myPointDirection; }

public void rocket()
{
  fill(255);
  line((float)myCenterX - 10, (float)myCenterY + 5, (float)myCenterX - 20, (float)myCenterY + 5);
  line((float)myCenterX - 10, (float)myCenterY, (float)myCenterX - 25, (float)myCenterY);
  line((float)myCenterX - 10, (float)myCenterY - 5, (float)myCenterX - 20, (float)myCenterY - 5);
}

}
public class Asteroid extends Floater
{
  public int rotSpeed;
  public Asteroid(int x, int y)
  {
      rotSpeed = (int)(Math.random()*18-9);
      corners = 8;  //the number of corners, a triangular floater has 3   
      xCorners = new int[corners];   
      yCorners = new int[corners];
      xCorners[0] = 26;
      yCorners[0] = 0;
      xCorners[1] = 12;
      yCorners[1] = 20;
      xCorners[2] = -6;
      yCorners[2] = 24;
      xCorners[3] = -22;
      yCorners[3] = 16;
      xCorners[4] = -18;
      yCorners[4] = 0;
      xCorners[5] = -22;
      yCorners[5] = -16;
      xCorners[6] = -2;
      yCorners[6] = -20;
      xCorners[7] = 14;
      yCorners[7] = -16;  
      myColor = 125;   
      myCenterX = x;
      myCenterY = y; //holds center coordinates   
      myDirectionX = (int)(Math.random()*2 - 2);
      myDirectionY = (int)(Math.random()*2 - 2); //holds x and y coordinates of the vector for direction of travel   
      myPointDirection = Math.random()*360; 
  }

  public void setX(int x){ myCenterX = x;}
  public int getX(){ return (int) myCenterX;}
  public void setY(int y){ myCenterY = y;}
  public int getY(){ return (int) myCenterY;}
  public void setDirectionX(double x){ myDirectionX = x;}
  public double getDirectionX (){ return (double) myDirectionX; }
  public void setDirectionY(double y){ myDirectionY = y;}
  public double getDirectionY (){ return (double) myDirectionY; }
  public void setPointDirection( int degrees){ myPointDirection = degrees;}
  public double getPointDirection(){ return (int) myPointDirection; }
  public void move()
  {
    if(myDirectionX == 0)
    {
      myDirectionX = 2 - Math.random()*2;
    }
    rotate(rotSpeed);
    //Floater.move();
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }  
  }     
  
}

abstract class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians = myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 

