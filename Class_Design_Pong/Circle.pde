class Circle extends Shape {
  private float radius;
  private color c;
  private int xSpeed;
  private int ySpeed;

  private Circle(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
    this.xSpeed = int (random (1, 5));
    this.ySpeed = int (random (1, 5));
    
  }

  public void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }

  private void step() {
    x += xSpeed;
    y += ySpeed;
  }
}
