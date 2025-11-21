class Asteroids extends Floater{
  private double rotSpeed;
  public Asteroids(){
    corners = 9;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -3;
    xCorners[1] = 2;
    yCorners[1] = -7;
    xCorners[2] = 5;
    yCorners[2] = -6;
    xCorners[3] = 7;
    yCorners[3] = -5;
    xCorners[4] = 13;
    yCorners[4] = 0;
    xCorners[5] = 2;
    yCorners[5] = 10;
    xCorners[6] = -9;
    yCorners[6] = 5;
    xCorners[7] = -7;
    yCorners[7] = 0;
    xCorners[8] = -11;
    yCorners[8] = -3;
    rotSpeed = Math.random()*15-7;
    myColor = color(80,80,80);
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    myXspeed = Math.random()*10-5;
    myYspeed = Math.random()*10-5;
   
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public void show(){
    super.show();
  }
 
  public void setColor(int c){
    myColor = c;
  }
  public int getColor(){
    return myColor;
  }
  public double getXcenter(){
    return myCenterX;
  }
  public double getYcenter(){
    return myCenterY;
  }
 
}

