class Ball () {

  private int ballX;
  private int ballY;
  private final int ballStartX;
  private final int ballStartY;
  private final int ballDiameter;
  private int ballMoveX;
  private int ballMoveY;
  private int xSpeed;
  private int ySpeed;
  private int directionX;
  private int directionY;

  private static int ballCount = 5;

  //Constructor
  Ball (float width, float height) {
    ballStartX = int(width/2);
    ballStartY = int(height/2);
    this.ballX = ballStartX;
    this.ballY = ballStartY;
    ballDiameter = int(width/70);
    this.ballSpeedX = int (random (1, 5));
    this.ballSpeedY = int (random (1, 5));
    this.c = color(int(random(255)), int(random(255)), int(random(255)));
  } //End of Constructor

  void draw() {
    fill(c);
    ellipse(ballX, BallY, BallDiameter, BallDiameter);
  }

  //Game Start
  void gameStart () {
    ballRandom.Random();
  } //End gameStart

  void gamePlay() {
    //Top and Bottom Boundary Bounce, accounting for increased ball movement per "step"
    if (ballY <= 0 || ballY >= height) { //Empty IF to skip ball arithmetic when score happens
    } else {
      if (ballY <= 0+(ballDiameter/2) || ballY >= height-(ballDiameter/2) ) {
        directionY = directionY * (-1);
      }
      if (ballY <= 0+(ballDiameter/2) ) {
        ballY = 0+(ballDiameter/2);
      }
      if (ballY >= height-(ballDiameter/2) ) {
        ballY = height-(ballDiameter/2);
      }
    }
  }

  //Getters and Setters
  public static int getBallCount() {
    return ballCount;
  }
  public int getBallX() {
    return ballX;
  }
  public int getBallY() {
    return ballY;
  }
  public int getBallDiameter() {
    return ballDiameter;
  }
} //End of Class
