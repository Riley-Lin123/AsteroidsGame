Spaceship fighter = new Spaceship();
Star[] stars = new Star[100];
boolean a = false;
boolean x = false;
boolean y = false;
//your variable declarations here
public void setup() 
{
  background(0);
  size(1000,1000);
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  fighter.move();
  if (x == true){
    fighter.turn(-8);
    
  }
  if (y == true){
    fighter.turn(8);
   
  }
  if (a == true){
    fighter.accelerate(0.15);
    
  }
  fighter.setXspeed(fighter.getXspeed()*0.99);
  fighter.setYspeed(fighter.getYspeed()*0.99);
  fighter.show();
}
public void keyPressed(){
  if (key == 'w' || key == 'W'){
    if (fighter.getXspeed() > 10 || fighter.getYspeed() > 10){
      fighter.setXspeed(10);
      fighter.setYspeed(10);
    }
    a = true;
  }
  if (key == 'a' || key == 'A'){
    x = true;
  }
  if (key == 'd' || key == 'D'){
    y = true;
  }
  if (key == 'f' || key == 'F'){
    fighter.hyperSpace();
}
}

public void keyReleased(){
  if (key == 'w' || key == 'W'){
    a = false;
  }
  if (key == 'a' || key == 'A'){
    x = false;
  }
  if (key == 'd' || key == 'D'){
    y = false;
  }
}
