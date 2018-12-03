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

    if (y - radius < 0 || y +radius > height) {
      ySpeed *= -1;
    }
    if (x + radius > leftPaddle.getX() && x - radius < leftPaddle.getX() + leftPaddle.getpaddleWidth() && y > leftPaddle.getY() && y < leftPaddle.getY() + leftPaddle.getpaddleHeight()) {
      xSpeed *= -1;
    }
    if (x - radius < rightPaddle.getX() + rightPaddle.getpaddleWidth() && x + radius > rightPaddle.getX() && y > rightPaddle.getY() && y < rightPaddle.getY() + rightPaddle.getpaddleHeight()) {
      xSpeed *= -1;
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
