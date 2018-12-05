class Ball extends Shape {
  private color c;
  private float radius;
  private float xSpeed = random(-5, 5);
  private float ySpeed = random(-5, 5);
  private Boolean ballXGoal;
  private Boolean ballXGoalOnce;
  private Boolean createNextBall;
  private int scorePlayer1 = 0;
  private int scorePlayer2 = 0;

  private Ball(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
    this.ballXGoal = false;
    this.ballXGoalOnce = false;
    this.createNextBall = false;
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
    
    //Scoring on Left and Right, reseting variables to decrease system resources
    //See Notes for how to operate goal area
    if (x < 0+(radius/2) || x > width-(radius/2)) { //Error: -(ballDiameter/2)
      if (x < 0+(radius/2)) {
        scorePlayer1 = scorePlayer1 + 1;
        x = 0+(radius/2);
        ballXGoal = true;
        ballXGoalOnce = true;
        createNextBall = true;
        y = y; //Assignment to itself, in the scoring area that becomes a marker for Fireworks and Scoreboard
      }
    }
    if (x > width-(radius/2)) {
      scorePlayer2++;
      x = width-(radius/2);
      ballXGoal = true;
      ballXGoalOnce = true; //Passing to Fireworks
      createNextBall = true;
      y = y;
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
