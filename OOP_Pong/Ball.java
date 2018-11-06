class Ball () {

  private int ballX;
  private int ballY;
  private final int ballStartX;
  private final int ballStartY;
  private final int ballDiameter;
  private int ballMoveX;
  private int ballMoveY;

  private static int ballCount = 5;

  //Constructor
  Ball () {
    this.ballX = ballX;
    this.ballY = ballY;
    this.ballSpeedX = ballSpeedX;
    this.ballSpeedY = ballSpeedY;
  } //End of Constructor

  //Game Start
  void gameStart () {
    ballStartX = width/2;
    ballStartY = height/2;
    ballX = ballStartX;
    ballY = ballStartY;
    ballDiameter = width/70; //Must pick one dimension for both ellipse diameters, for a circle

    ballSpeedX = int (random (-2, 2));
    while (ballSpeedX == 0) {
      ballSpeedX = int (random (-2, 2));
    }
    ballSpeedY = int (random (-2, 2));
    while (ballSpeedY == 0) {
      ballSpeedY = int (random (-2, 2));
    }
  } //End gameStart

  //Getters and Setters
  public static int getBallCount() {
    return ballCount;
  }
} //End of Class
