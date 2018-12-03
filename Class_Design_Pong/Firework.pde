class Firework extends Ball {
  //Variables
  private float gravity;
  private float c = getC();
  private float radius = getRadius();
  private float xSpeed = getXspeed();
  private float ySpeed = getYspeed();
  private float newX = getX();
  private float newY = getY();

  //Constructor
  private Firework (float newX, float newY) {
    //X&Y are values when Pong Ball scores
    this.x = newX; //random (width); actually needs to be the X&Y of the score
    if (newX < width*1/4) {
      this.xSpeed = random(1, 5); //Goal on Left side, increasing all X Values
    } else {
      this.xSpeed = random(-1, -5); //Goal on Right side, decreasing all X Values
    }
    this.y = newY; //random (height); actually needs to be the X&Y of the score
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
    this.radius = random(width*1/25);
    this.ySpeed = random(-5, 5);
    gravity = 0.5;
  }//End of Constructor

  public void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }

  private void step() {
    x += xSpeed;
    y += ySpeed;
    ySpeed += gravity;
  }
}
