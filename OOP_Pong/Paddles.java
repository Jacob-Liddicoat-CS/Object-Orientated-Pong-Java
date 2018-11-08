class Paddles {

  private static int paddleWidthRatio;
  private static int paddleHeightRatio = 10;
  private final int [] paddle = {0, 0}; //Paddle width and height
  private final int [] player = new int [4];

  paddleWidthRatio = ballDiameter/2;
  paddle[0] = paddleWidthRatio; 
  paddle[1] = height/paddleHeightRatio; 
  player[0] = 0;
  player[1] = height/2 - height/paddleHeightRatio/2; //middle minus half the paddle to find the paddle's center
  int section = width / paddleWidthRatio; // Local Variable: calculate the divisions of the paddle and draw in the last one
  player[2] = width*(section-1)/section; // *(paddlewidthRatio-1)/paddlewidthRatio
  player[3] = height/2;
  
  public float getpaddle[0]() {
    return paddle[0];
  }
  public float getpaddle[1]() {
    return paddle[1];
  }
  public float getplayer[0]() {
    return player[0];
  }
  public float getplayer[1]() {
    return player[1];
  }
  public float getplayer[2]() {
    return player[2];
  }
  public float getplayer[3]() {
    return player[3];
  }
}
