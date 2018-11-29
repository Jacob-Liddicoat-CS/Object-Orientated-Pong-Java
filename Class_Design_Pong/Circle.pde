class Circle extends Shape {
  private color c;
  private float radius;
  private int directionX;
  private int directionY;
  private int xSpeed;
  private int ySpeed;

  private Circle(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
    directionX = int (random (-2, 2));
    while (directionX == 0) {
      directionX = int (random (-2, 2));
    }
    directionY = int (random (-2, 2));
    while (directionY == 0) {
      directionY = int (random (-2, 2));
    }
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
    
    //Top and Bottom Boundary Bounce, accounting for increased ball movement per "step"
    if ( (y > 0 && y <= 0+(radius*2) ) || ( y < height && y >= height-(radius*2) )   ) { //ballY bounce area wider than below
      directionY = directionY * (-1);
    }
    if (y < 0+(radius) ) { //Redraw to catch when the bounce has not happened in previous IF
      y = 0+(radius);
    }
    if (y > height-(radius) ) { //Redraw to catch when the bounce has not happened in first IF
      y = height-(y);
    }
  }
}
