class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  private int myColor;
  public Star(){
    myX = Math.random()*1000;
    myY = Math.random()*1000;
    myColor = color(255);
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX, (float)myY, 5,5);
  }
 
  public int getColor(){
    return myColor;
  }
}
