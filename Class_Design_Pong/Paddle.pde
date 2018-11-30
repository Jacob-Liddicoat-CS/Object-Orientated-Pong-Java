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
  
  void keyPressed() {
    if (keyCode == UP) {
      keys[0] = true;
    }
    
    if (keyCode == DOWN) {
      keys[1] = true;
    }
    
    if (key == 'w' || key == 'W') {
      keys[2] = true;
    }
    
    if (key == 's' || key == 'S') {
      keys[3] = true;
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
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getpaddleWidth() {
    return paddleWidth;
  }
  public float getpaddleHeight() {
    return paddleHeight;
  }
}
