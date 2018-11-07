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
    ballDiameter = width/70;
    ballSpeedX = 1;
    ballSpeedY = 1;
    
    ballRandom.Random();
  } //End gameStart
  
  void gamePlay() {
    ballMoveX = ballSpeedX*directionX;
    ballMoveY = ballSpeedY*directionY;
    ballx += ballMoveX;
    ballY += ballMoveY;
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
