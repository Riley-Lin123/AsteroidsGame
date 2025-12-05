class Bullet extends Floater{
  private double myX, myY;
 public Bullet(Spaceship ship){
   myX = myCenterX;
   myY = myCenterY;
   myCenterX = ship.getXcenter();
   myCenterY = ship.getYcenter();
   myXspeed = ship.getXspeed();
   myYspeed = ship.getYspeed();
   myPointDirection = ship.getMyPointDirection();
   accelerate(6);
   myColor = color(255,0,0);
 }
 public void setX(double x){
   myX = x;
 }
 public void setY(double y){
   myY = y;
 }
 public double getX(){
   return myX;
 }
 public double getY(){
   return myY;
 }
 public double getXcenter(){
      return myCenterX;
    }
 public double getYcenter(){
      return myCenterY;
    }
 public void move(){
   myX += myXspeed;    
   myY += myYspeed; 
   super.move();
 }
 public void show(){
   fill(myColor);
   stroke(myColor);
  ellipse((float)myCenterX,(float)myCenterY,5,5);
  
 }
}
