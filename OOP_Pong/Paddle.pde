class Paddle {
  //Variable Declaration & Assignment, notice that inside object, variable are not Class-Referenced by delimiter
  float x;
  float y;
  float diameter;
  color colour;
  float xSpeed;
  float ySpeed;

  Paddle (float x, float y, color myColour) { //Constructor
    this.x = x;
    this.y = y;
    diameter = 20;
    colour = myColour;
    xSpeed = 1;
    ySpeed = 1;
  } //End of Constructor
  void step() {
  paddleWidthRatio = ballDiameter/2;
  paddle[0] = paddleWidthRatio; 
  paddle[1] = height/paddleHeightRatio; 
  player[0] = 0;
  player[1] = height/2 - height/paddleHeightRatio/2;
  int section = width / paddleWidthRatio;
  player[2] = width*(section-1)/section;
  player[3] = height/2;
  // Code to bounce off of paddles, does not interfer with score code since at different X-axis values, just before goal area
  // Collision of 3 requirements to define paddle area
  if (x == paddle[0]+(ballDiameter/2) && y >= player[1] & y <= player[1] + paddle[1]) {
    xSpeed *= (-1); //Shorthand for previous x*-1
  }
  if (x == player[2]-(ballDiameter/2) && y >= player[3] & y <= player[3] + paddle[1]) {
    ySpeed *= (-1); //Shorthand for previous x*-1
  }
}
}
