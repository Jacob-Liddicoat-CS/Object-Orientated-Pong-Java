class Star {
  private float x;
  private float y;
  private float radius;

  public int targetX;
  public int targetY;
  private static int starCount = 10; //Number of stars or Pong Balls that will be drawn
  private static int maxRadius = 20; //can this be a ratio of width with error checking of different geometery

  public Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  } //End of Constructor
  targetX = x;
  targetY = y;

  void step() {
    if (x < targetX) {
      x++;
    } else {
      x--;
    }

    if (y < targetY) {
      y++;
    } else {
      y--;
    }
  } //End of step

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
  public static int getstarCount() {
    return starCount;
  }
  public static int getmaxRadius() {
    return maxRadius;
  }
} //End of Start
