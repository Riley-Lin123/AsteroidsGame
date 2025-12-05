Spaceship fighter = new Spaceship();
Star[] stars = new Star[100];
boolean a = false;
boolean x = false;
boolean y = false;
boolean canShoot = true;
ArrayList <Asteroids> myList = new ArrayList <Asteroids>();
ArrayList <Bullet> bang = new ArrayList <Bullet>();


//your variable declarations here
public void setup()
{
  background(0);
  size(1000,1000);
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  for (int i = 0; i < 20; i++){
    myList.add(new Asteroids());
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
  for (int i = 0; i < myList.size(); i++){
    myList.get(i).move();
    myList.get(i).show();
    if(myList.get(i).getXcenter() >= fighter.getXcenter()-15 && myList.get(i).getXcenter() <= fighter.getXcenter()+15 && myList.get(i).getYcenter() >= fighter.getYcenter()-15 && myList.get(i).getYcenter() <= fighter.getYcenter()+15){
      myList.remove(i);
      i--;
    }
  }
  for (int i = 0; i < bang.size(); i++) {
  bang.get(i).move();
  bang.get(i).show();
  if (bang.get(i).getXcenter() >= 1000 || bang.get(i).getYcenter() >= 1000 || bang.get(i).getXcenter() <= 0 || bang.get(i).getYcenter() <= 0){
    bang.remove(i);
    i--;
    break;
  }
  for (int j = 0; j < myList.size(); j++) {
    if(myList.get(j).getXcenter() >= bang.get(i).getXcenter()-15 &&
       myList.get(j).getXcenter() <= bang.get(i).getXcenter()+15 &&
       myList.get(j).getYcenter() >= bang.get(i).getYcenter()-15 &&
       myList.get(j).getYcenter() <= bang.get(i).getYcenter()+15) {
          myList.remove(j);
          j--;
          bang.remove(i);
          i--;
          break;
    }  
  }
}

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

void mousePressed() {
  if (mouseButton == LEFT) {
    if(canShoot == true){
      bang.add(new Bullet(fighter));
      canShoot = false;
  }
  }
}

void mouseReleased(){
    canShoot = true;
}
