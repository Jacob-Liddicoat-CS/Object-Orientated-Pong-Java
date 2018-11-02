class Firework () {
  float x;
  float y;
  float diameter;
  color c;
  float xSpeed;
  float ySpeed;
  float gravity;
  
  //Constructor
  Firework (float x, float y, float diameter) {
    //X&Y are values when Pong Ball scores
    this.x = x;
    this.y = y;
    this.c = color(int(random(255)), int(random(255)), int(random(255)));
    this.diameter = random(diameter*1/50);
    this.xSpeed = random(-5, 5);
    this.ySpeed = random(-5, 5);
    gravity = 0.5;
  } //End of Constructor
} //End of Class Ball
