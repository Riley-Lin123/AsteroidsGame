class Spaceship extends Floater  
{   
  
    public Spaceship(){
      
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myColor = color(42, 157, 244);
      myCenterX = 500;
      myCenterY = 500;
    }
    public void hyperSpace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (Math.random()*1000);
      myCenterY = (Math.random()*1000);
      myPointDirection = (Math.random()*360);
    }
    public void setXspeed(double x){
      myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    public void setXcenter(double c){
      myCenterX = c;
    }
    public void setYcenter(double c){
      myCenterY = c;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
    public double getXcenter(){
      return myCenterX;
    }
    public double getYcenter(){
      return myCenterY;
    }
    
}
