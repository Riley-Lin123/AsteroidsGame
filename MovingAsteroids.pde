class Asteroid extends Floater {
  constructor() {
    super();
    this.rotSpeed = random(-7, 8);

    this.corners = 8;
    this.xCorners = [-11, 2, 5, 7, 13, 2, -9, -7];
    this.yCorners = [-3, -7, -6, -5, 0, 10, 5, 0];

    this.myColor = color(80, 80, 80);
    this.myCenterX = random(0, 1000);
    this.myCenterY = random(0, 1000);
    this.myXspeed = random(-5, 5);
    this.myYspeed = random(-5, 5);
  }

  move() {
    this.turn(this.rotSpeed);
    super.move();
  }

  show() {
    super.show();
  }

  setColor(c) {
    this.myColor = c;
  }

  getColor() {
    return this.myColor;
  }

  getXcenter() {
    return this.myCenterX;
  }

  getYcenter() {
    return this.myCenterY;
  }
}
