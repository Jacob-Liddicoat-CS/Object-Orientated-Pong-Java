class Paddle extends Shape {
  private float paddleWidth;
  private float paddleHeight;
  private float paddleSpeed = 5;
  private color c;

  private Paddle(float x, float y, float paddleWidth, float paddleHeight, color c) {
    super(x, y);
    this.paddleWidth = paddleWidth;
    this.paddleHeight = paddleHeight;
    this.c = c;
  }

  public void draw() {
    fill(c);
    rect(x, y, paddleWidth, paddleHeight);
  }

  void stepUp() {
    //Code to Move Paddles
    y -= paddleSpeed;
    if (y <= 0) {
      y = 0;
    }
  }

  void stepDown() {
    y += paddleSpeed;
    if (y >= 600 - paddleHeight) {
      y = 600 - paddleHeight;
    }
  }


  void PaddleMove() {
    if (keys[0] == true) {
      leftPaddle.stepUp();
    }
    if (keys[1] == true) {
      leftPaddle.stepDown();
    }
    if (keys[2] == true) {
      rightPaddle.stepUp();
    }
    if (keys[3] == true) {
      rightPaddle.stepDown();
    }
  }

  //Getters and Setters
  public float getpaddleX() {
    return x;
  }
  public float getpaddleY() {
    return y;
  }
  public float getpaddleWidth() {
    return paddleWidth;
  }
  public float getpaddleHeight() {
    return paddleHeight;
  }
}
