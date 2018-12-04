class Ball extends Shape {
  private color c;
  private float radius;
  private float xSpeed = random(-5, 5);
  private float ySpeed = random(-5, 5);

  private Ball(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
  }

  public void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }

  private void step() {
    while (xSpeed > -2 && xSpeed < 2) {
      xSpeed = random(-6, 6);
    }
    while (ySpeed > -2 && ySpeed < 2) {
      ySpeed = random(-6, 6);
    }
    x += xSpeed;
    y += ySpeed;
    
    if (x - radius < 0) {
      ClassDesignPong.scores[1] ++;
      println(ClassDesignPong.scores[0]+" "+ClassDesignPong.scores[1]);
      x = width/2;
      y = height/2;
    }
    if (x + radius > width) {
      ClassDesignPong.scores[0] ++;
      println(ClassDesignPong.scores[0]+" "+ClassDesignPong.scores[1]);
      x = width/2;
      y = height/2;
    }
  }
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
  public float getC() {
    return c;
  }
  public float getXspeed() {
    return xSpeed;
  }
  public float getYspeed() {
    return ySpeed;
  }
}
